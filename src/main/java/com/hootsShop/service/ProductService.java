package com.hootsShop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hootsShop.entity.Product;

@Service
public interface ProductService {
	
	public List<Product> getProducts();
	
	public Product getProduct(Integer productId);
}
