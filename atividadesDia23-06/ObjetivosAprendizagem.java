package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/objetivosAprendizagem")
public class ObjetivosAprendizagem {
	@GetMapping
	public String objetivosAprendizagem() {
		return "objetivos de aprendizagem: me adaptar e entender o funcionamento do Spring, sabendo aplica-lo quando necessário.";
	}
}