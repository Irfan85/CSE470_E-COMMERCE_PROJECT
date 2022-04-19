package com.hootsShop.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.hootsShop.entity.User;

@Service
public class UserServiceImpl implements UserService {
	private static List<User> users = new ArrayList<User>();
	private static User currentUser = null;
	
	static {
		users.add(new User(1, "Akkas Ali", "akkasali@gmail.com", "123"));
		users.add(new User(2, "Abdul Kuddus", "abdulkuddus@gmail.com", "abc"));
	}

	@Override
	public User userLogin(String email, String password) {
		
		for (User user : users) {
			if (user.getEmail().equals(email) && user.getPassword().equals(password)) {
				currentUser = user;
				return user;
			}
		}
		
		return null;
	}
	
	@Override
	public User getCurrentUser() {
		return currentUser;
	}

	@Override
	public void userLogout() {
		currentUser = null;
	}

	@Override
	public void addUser(User newUser) {
		users.add(newUser);
	}

}
