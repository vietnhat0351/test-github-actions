package com.example.testgithubactions;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/demo")
public class DemoController {
    @GetMapping("/hello")
    public String hello() {
        System.out.println("Hello, World!");
        System.out.println("Hello, World!");
        return "Hello, World!";
    }
}
