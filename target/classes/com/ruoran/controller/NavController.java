package com.ruoran.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ruoran
 */
@Controller
public class NavController {
    
    @RequestMapping("/contact.htm")
    public String contact() {

        return "contact";
    }
    @RequestMapping("/productList.htm")
    public String productList() {

        return "productList";
    }
    @RequestMapping("/addtocart.htm")
    public String addtocart() {

        return "productList";
    }


}
