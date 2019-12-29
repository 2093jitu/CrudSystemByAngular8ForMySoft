package com.exam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;


import com.exam.model.DonationRege;
import com.exam.service.LoninOrRegeDaoService;

@SpringBootApplication
@RestController
@CrossOrigin(origins = "*")
public class UsererApiController {

	@Autowired
	LoninOrRegeDaoService loninOrRegeDaoService;

	@PostMapping("/register")
	public String regester(@RequestBody DonationRege user) {

		
		boolean reg = loninOrRegeDaoService.isEmailAlreadyInUse(user.getEmail(), "DonationRege");	
		

		if (reg != true) {
			System.out.println(user);
			user.setStatus("Active");
			loninOrRegeDaoService.save(user);

			return "Hi " + user.getFirstName() + " " + user.getLastName() + ", Your registration is successful !";

		} else {

			return "This email already exists";

		}

	}

	@GetMapping(value = "/getAllUsers")
	public List<DonationRege> getAll() {

		return loninOrRegeDaoService.allDonationUser();

	}

	@DeleteMapping("/cancel/{id}")
	public List<DonationRege> cancal(@PathVariable int id) {

		loninOrRegeDaoService.deleteUser(id);

		return loninOrRegeDaoService.allDonationUser();
	}
	
	@GetMapping("/findUserbyId/{name}")
	public List<DonationRege> getById(@PathVariable String name) {

		System.out.println(name);

		return loninOrRegeDaoService.getById(name);
	}

}
