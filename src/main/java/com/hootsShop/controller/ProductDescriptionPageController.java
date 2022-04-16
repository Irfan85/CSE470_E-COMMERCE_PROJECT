package com.hootsShop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hootsShop.entity.Product;
import com.hootsShop.service.ProductService;

@Controller
public class ProductDescriptionPageController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("/product")
	public String showProductDescriptionPage(@RequestParam Integer productId, Model model) {
		Product product = productService.getProduct(productId);
		
		model.addAttribute("product", product);
		
		return "product-description-page";
	}
}
