package com.jenkiess.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
@SpringBootApplication
public class DemoApplication {

	@GetMapping("/api")
	public String helloWorld(){
		return "me me me ";
	}@GetMapping("/api/dog")
	public String helloWorlds(){
		return "api regrated";
	}
	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

}
