package com.hootsShop.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.multipart;

import java.security.KeyStore.Entry;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.hootsShop.entity.Product;

@Controller
public class AddProductPageController {
	
	private static final Map<Integer, String> categories = new LinkedHashMap<>();
	
	static {
		categories.put(1, "Electronics");
		categories.put(2, "Gadjets");
		categories.put(3, "Toys");
	}
	
	@RequestMapping("/addProductPage")
	public String showAddProductPage(Model model) {
		
		model.addAttribute("categories", categories.entrySet());
		
		Product newProduct = new Product();
		model.addAttribute("newProduct", newProduct);
		
		return "add-product";
	}
	
	@PostMapping("/addProduct")
	public String addProduct(@RequestParam(required = false) MultipartFile imageFile, @ModelAttribute Product newProduct) {
		
		// Validation
		if(newProduct.getNewFlag() == 0) {
			newProduct.setWarrantyDuration(null);
		} else if (newProduct.getNewFlag() == 1) {
			newProduct.setUsageDuration(null);
		}
		
		System.out.println(imageFile);
		System.out.println(newProduct);

		
		return "redirect:/";
	}
}
