/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ruoran.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ruoran
 */
@Controller
public class UserController {
    @RequestMapping("/account.htm")
    public String login(){
       
    return "account";
    }
    @RequestMapping("/register.htm")
    public String register(){
      
    return "register";
    }
    @RequestMapping("/index.htm")
    public String index(){
       
    return "index";
    }
}
