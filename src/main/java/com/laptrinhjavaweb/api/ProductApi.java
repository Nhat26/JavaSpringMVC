package com.laptrinhjavaweb.api;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import DAO.ProductDAO;

import DB.connect.DatabaseConfig;
import model.Product;

@RestController(value = "ProductAPI")
public class ProductApi {
	@GetMapping("/api/product")
	public List<Product> readProduct() {
		List<Product> list = new ArrayList<>();
		ProductDAO dao = new ProductDAO();
		list = dao.readProduct();
		System.out.println(list);
		return list;
	}

	@PostMapping(value = "/api/product", consumes = {
			"application/json" }, headers = "content-type=application/x-www-form-urlencoded")
	public ResponseEntity<Object> createProduct(@RequestBody Product product) {
		Connection conn = DatabaseConfig.getConnection();
		ProductDAO dao = new ProductDAO();
		if (conn != null) {
			System.out.print("Connect thanh cong\n");

			if (dao.addProduct(product) > 0) {
				String message = "Product created successfully";
				return ResponseEntity.status(HttpStatus.CREATED).body(message);
			} else {
				String message = "Failed to create product";
				return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(message);
			}
		}
		String message = "Internal server error";
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(message);
	}

	@PutMapping("/api/product")
	public List<Product> updateProduct(@RequestBody Product product) {
		Connection conn = DatabaseConfig.getConnection();
		ProductDAO dao = new ProductDAO();
		List<Product> list = new ArrayList<>();
		if (conn != null) {
			System.out.print("Connect thanh cong\n");

			if (dao.updateProduct(product) > 0) {
				list = dao.readProduct();
				return list;
			} else {
				if (dao.addProduct(product) == 0) {
					return null;
				}
			}
		}
		return null;
	}

	@DeleteMapping("/api/product")
	public List<Product> deleteProduct(@RequestBody long[] id) {
		Connection conn = DatabaseConfig.getConnection();
		ProductDAO dao = new ProductDAO();
		System.out.println(Arrays.toString(id));
		List<Product> list = new ArrayList<>();

		if (conn != null) {
			for (long productId : id) {
				dao.deleteProduct(productId);
			}

		}
		list = dao.readProduct();
		return list;
	}
}
