/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ruoran.controller;

import com.ruoran.pojo.Cart;
import com.ruoran.pojo.CartItem;
import com.ruoran.pojo.Product;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author 站站
 */
@Controller
public class CartController {

    private Cart cart;

    public CartController() {
         cart=new Cart();
    }

    @RequestMapping("/addtocartser.htm")
    public String addtocartser(HttpServletRequest request) {
        System.out.print(request.getParameter("bookname"));
        HttpSession httpSession = request.getSession();
   
        Product product=new Product();
        product.setImage(request.getParameter("bookimg"));
        product.setMarket_price(Double.valueOf((request.getParameter("bookprice"))));
        product.setPid((request.getParameter("bookid")));
        
        product.setPname(request.getParameter("bookname"));
        
        CartItem cartItem=new CartItem();
        cartItem.setProduct(product);
        cartItem.setCount(1);
        cart.addCart(cartItem);
        httpSession.setAttribute("mycart", cart);
        return "hello";
    }
}
