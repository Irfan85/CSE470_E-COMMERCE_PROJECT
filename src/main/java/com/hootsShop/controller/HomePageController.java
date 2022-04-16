package com.hootsShop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hootsShop.entity.Product;
import com.hootsShop.service.ProductService;

@Controller
public class HomePageController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/")
	public String showHomePage(@RequestParam(required = false) Integer category, Model model) {
		System.out.println(category);
		
		if (category == null) {
			category = 0;
		}
		
		List<Product> productList = productService.getProducts();
		
		model.addAttribute("homePageCategory", category);
		model.addAttribute("productList", productList);
		
		return "home-page";
	}
	
	@RequestMapping("/search")
	public String showSearchPage() {
		return "search-page";
	}
	
	@RequestMapping("/login")
	public String showLoginPage() {
		return "login-page";
	}
}
