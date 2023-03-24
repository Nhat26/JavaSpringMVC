package com.laptrinhjavaweb.controller;





import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import DAO.ProductDAO;
import DAO.UserDAO;
import model.Product;
import model.Users;

@Controller(value = "homeControllerOfLogin")
public class HomeController {
	@RequestMapping(value = "/dangnhap", method = RequestMethod.GET)
	public String Index() {

		return "dangnhap";
	}
	
	@RequestMapping(value = "/dangnhap-post", method = RequestMethod.POST)
	@ResponseBody	
	public ModelAndView property(HttpServletRequest request) {
		UserDAO dao = new UserDAO();
		if(dao.CheckLogin(request.getParameter("email"), request.getParameter("password"))) {
			Users user = new Users();
			user.setEmail(request.getParameter("email"));
			user.setPassword(request.getParameter("password"));		
			HttpSession userSession = request.getSession();
			userSession.setAttribute("userSession",user );	
			return new ModelAndView("redirect:/trang-chu");			
		}
		else {
			return new ModelAndView("redirect:/dangnhap");
		}
		
	}

	@RequestMapping(value = "/dangxuat")
	public RedirectView Dangxuat(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("userSession");
		return new RedirectView("trang-chu");
	}
	
	@RequestMapping("/dangky")
	public String Dangky() {		
		return "dangky";
	}
	@RequestMapping(value = "/dangkypost", method = RequestMethod.POST)
	public ModelAndView DangkyPost(HttpServletRequest request) {		
		UserDAO dao = new UserDAO();
		
			Users user = new Users();
			user.setName(request.getParameter("username"));
			user.setEmail(request.getParameter("email"));
			user.setPassword(request.getParameter("password"));	
			if(dao.addUser(user) == 1) {
				HttpSession userSession = request.getSession();
				userSession.setAttribute("userSession",user );	
				return new ModelAndView("redirect:/trang-chu");		
			}
			else {
				return new ModelAndView("redirect:/dangky");
			}
		
	}
	@RequestMapping("/quanlyuser")
	public ModelAndView Quanlytaikhoan() {	
		 ModelAndView mav = new ModelAndView();
		 mav.setViewName("admin/quanlyuser");
		 UserDAO dao = new UserDAO();
		 List<Users> userList = dao.readUsers();
		 mav.addObject("userList",userList);
		return mav;
	}
	
	@RequestMapping("/quanlyproduct")
	public ModelAndView Quanlysanpham() {	
		 ModelAndView mav = new ModelAndView();
		 mav.setViewName("admin/quanlysanpham");
		 ProductDAO dao = new ProductDAO();
		 List<Product> productList = dao.readProduct();
		 mav.addObject("productList",productList);
		 mav.addObject("productDAO",dao);
		return mav;
	}
}
