package com.hootsShop.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.hootsShop.entity.Product;

@Service
public class ProductServiceImpl implements ProductService {
	private static List<Product> products = new ArrayList<Product>();
	private static Integer productId = 8;
	
	static {
		products.add(new Product(1, "Xiaomi Trimmer", "It is a trimmer", 2, "trimmer1.jpg", 12.00, 1, 1));
		products.add(new Product(2, "Edifier Earbuds", "It is an earbud", 2, "earbuds1.jpg", 25.00, 1, 2));
		products.add(new Product(3, "Awei Speaker", "It is a speaker", 2, "speaker1.jpg", 11.00, 1, 2));
		products.add(new Product(4, "Baseus Lamp", "It is a lamp", 2, "lamp1.jpg", 35.00, 1, 1));
		products.add(new Product(5, "Usb Type C Hub", "It is an adapter", 2, "adapter1.jpg", 47.00, 1, 1));
		products.add(new Product(6, "Simple Wrist Watch", "It is a wrist watch", 1, "watch1.jpg", 56.00, 1, 2));
		products.add(new Product(7, "Vintage Pocket Watch", "It is a vintage pocket watch", 1, "watch2.jpg", 119.00, 2, 2));
	}
	
	@Override
	public List<Product> getProducts() {
		return products;
	}

	@Override
	public Product getProduct(Integer productId) {
		return products.get(productId - 1);
	}

	@Override
	public List<Product> searchProduct(String searchString) {
		List<Product> matchedProducts = new ArrayList<>();
		
		for(Product product : products) {
			if(product.getName().toLowerCase().contains(searchString.toLowerCase())) {
				matchedProducts.add(product);
			}
		}
		
		return matchedProducts;
	}

	@Override
	public void addProduct(Product newProduct) {
		newProduct.setId(productId);
		productId++;
		
		products.add(newProduct);
	}

}
