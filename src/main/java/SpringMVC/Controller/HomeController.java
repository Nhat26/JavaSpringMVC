package SpringMVC.Controller;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController{
	@RequestMapping("/")
	public String Index()
	{
		
		return "client/dangnhap";
	}

	@RequestMapping("/dang-ky")
	public String Dangky() {
		return "client/dangky";
	}
	
	
}
