package com.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.BillingAddress;
import com.model.Customer;
import com.model.Product;
import com.model.ShippingAddress;
import com.model.User;
import com.service.CustomerService;
import com.service.UserService;


@Controller
public class UserController {

	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private UserService userService;

	public CustomerService getCustomerService() {
		return customerService;
	}

	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}
	
	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/getAllUsers") 

	public ModelAndView getAllUsers() {
	    List<User> users = userService.getAllUsers(); 
	    return new ModelAndView("UserList", "users", users); 
	}
	
	@RequestMapping(value = "/customer/registration")
	public ModelAndView getRegistrationForm() {
		Customer customer = new Customer();
		User user = new User();
		BillingAddress ba = new BillingAddress();
		ShippingAddress sa = new ShippingAddress();
		customer.setShippingAddress(sa);
		customer.setBillingAddress(ba);		customer.setUsers(user);

		return new ModelAndView("register", "customer", customer);
	}

	@RequestMapping(value = "/customer/registration", method = RequestMethod.POST)
	public String registerCustomer(@Valid @ModelAttribute(value = "customer") Customer customer, Model model, BindingResult result) {
		if (result.hasErrors())
			return "register";
		customerService.addCustomer(customer);
		model.addAttribute("registrationSuccess", "Your user has been registered successfully. Login to continue");
		return "login";
	}
	
	@RequestMapping("/user/delete/{userId}")
	public String deleteProduct(@PathVariable(value = "userId") String userId) {
		userService.deleteUser(userId);
		return "redirect:/getAllUsers";
	}
}
