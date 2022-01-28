package com.example.awscicdspring.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/")
    public String hello(){
        return "Test Controller.";
    }

    @GetMapping("/test")
    public String test(){
        return "Test Controller 2.";
    }


    @GetMapping("/test2")
    public String test2() {return "Test Controller 2.1."; }
}
