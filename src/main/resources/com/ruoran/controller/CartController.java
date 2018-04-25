/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ruoran.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author 站站
 */
@Controller
public class CartController {

    @RequestMapping("/addtocartser.htm")
    public String addtocartser(HttpServletRequest request,Model model) {
        System.out.print(request.getParameter("bookname"));
        model.addAttribute("bookname", request.getParameter("bookname"));
        return "hello";
    }
}
