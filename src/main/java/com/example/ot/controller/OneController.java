package com.example.ot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OneController {
	@RequestMapping("/one")
	String login() {
		return "onePage";

}
}