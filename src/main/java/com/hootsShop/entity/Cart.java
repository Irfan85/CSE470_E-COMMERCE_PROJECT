package com.hootsShop.entity;

import javax.persistence.Entity;

//@Entity
public class Cart {
	
	private Integer id;
	private Integer userId;
	private Integer productID;
	private Integer quantity;
	
	public Cart() {
		// No-arg constructor
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getProductID() {
		return productID;
	}

	public void setProductID(Integer productID) {
		this.productID = productID;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	@Override
	public String toString() {
		return "Cart [id=" + id + ", userId=" + userId + ", productID=" + productID + ", quantity=" + quantity + "]";
	}
	
	
}
