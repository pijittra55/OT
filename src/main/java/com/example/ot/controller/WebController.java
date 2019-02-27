package com.example.ot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebController {
 
	@RequestMapping("/home")
	String home() {
		System.out.print("TEST DDDDDDDdd");
		return "homePage";
	}
	
	@RequestMapping("/")
	String homePage() {
		System.out.print("TEST DDDDDDDdd");
		return "onePage";
	}
	
}