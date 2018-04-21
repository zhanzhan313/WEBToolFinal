/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ruoran.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author ruoran
 */
@Controller
public class UserController {

    @RequestMapping("/account.htm")
    public String login() {

        return "account";
    }

    @RequestMapping("/register.htm")
    public String register() {

        return "register";
    }

    @RequestMapping("/index.htm")
    public String index() {

        return "index";
    }

 
    @RequestMapping(value = "/findbyEmail.htm", method = RequestMethod.POST)
    @ResponseBody
    public String ajaxService(HttpServletRequest request) {
        String useremail = request.getParameter("useremail");
        System.out.println("com.ruoran.controller.UserController.ajaxService()"+useremail);
        String result = "";
        if (useremail.equals("ruoran")) {
            return "you cannot use";
        } else {
            return "you can use";
        }
       
    }

}
