package com.hootsShop.entity;

import javax.persistence.Entity;

import org.springframework.stereotype.Component;

//@Entity
@Component
public class Product {
	
	private Integer id;
	private String name;
	private String description;
	private Integer categoryId;
	private String imagePath;
	private Double price;
	private Double discountRate;
	private Integer sellerId;
	private Integer newFlag;
	private Integer stock;
	private Integer warrantyDuration;
	private Integer usageDuration;
	
	public Product() {
		// No-arg constructor
	}

	public Product(String name, String description, Integer categoryId, String imagePath, Double price) {
		this.name = name;
		this.description = description;
		this.categoryId = categoryId;
		this.imagePath = imagePath;
		this.price = price;
	}
	
	public Product(Integer id, String name, String description, Integer categoryId, String imagePath, Double price, Integer newFlag, Integer sellerId) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.categoryId = categoryId;
		this.imagePath = imagePath;
		this.price = price;
		this.newFlag = newFlag;
		this.sellerId = sellerId;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getDiscountRate() {
		return discountRate;
	}

	public void setDiscountRate(Double discountRate) {
		this.discountRate = discountRate;
	}

	public Integer getSellerId() {
		return sellerId;
	}

	public void setSellerId(Integer sellerId) {
		this.sellerId = sellerId;
	}

	public Integer getNewFlag() {
		return newFlag;
	}

	public void setNewFlag(Integer newFlag) {
		this.newFlag = newFlag;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}

	public Integer getWarrantyDuration() {
		return warrantyDuration;
	}

	public void setWarrantyDuration(Integer warrantyDuration) {
		this.warrantyDuration = warrantyDuration;
	}

	public Integer getUsageDuration() {
		return usageDuration;
	}

	public void setUsageDuration(Integer usageDuration) {
		this.usageDuration = usageDuration;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", description=" + description + ", categoryId=" + categoryId
				+ ", imagePath=" + imagePath + ", price=" + price + ", discountRate=" + discountRate + ", sellerId="
				+ sellerId + ", newFlag=" + newFlag + ", stock=" + stock + ", warrantyDuration=" + warrantyDuration
				+ ", usageDuration=" + usageDuration + "]";
	}
	
}
