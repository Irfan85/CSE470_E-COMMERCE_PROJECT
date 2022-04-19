package com.hootsShop.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hootsShop.entity.Cart;
import com.hootsShop.entity.Product;

@Service
public class CartServiceImpl implements CartService{
	
	@Autowired
	private ProductService productService;
	
	private static List<Cart> carts = new ArrayList<>();
	private static Integer cartCount = 0;
	
	@Override
	public Cart createNewCart(Integer userid, Integer productId, Integer quantity){
		Cart cart = new Cart();
		cart.setId(cartCount + 1);
		cart.setUserId(userid);
		cart.setProductID(productId);
		cart.setQuantity(quantity);
		
		cartCount++;
		carts.add(cart);
		
		return cart;
	}

	@Override
	public void removeCart(Integer cartId) {
		for (Cart cart : carts) {
			if (cart.getId() == cartId) {
				carts.remove(cart);
				break;
			}
		}
		
	}

	@Override
	public List<CartWrapper> getUserCarts(Integer userId) {
		List<CartWrapper> userCarts = new ArrayList<>();
		
		for(Cart cart : carts) {
			if(cart.getUserId().equals(userId)) {
				userCarts.add(new CartWrapper(cart, productService.getProduct(cart.getProductID())));
			}
		}
		
		return userCarts;
	}
	
	public static class CartWrapper {
		private Cart cart;
		private Product product;
		
		public CartWrapper(Cart cart, Product product) {
			this.cart = cart;
			this.product = product;
		}

		public Cart getCart() {
			return cart;
		}

		public Product getProduct() {
			return product;
		}

	}

}
