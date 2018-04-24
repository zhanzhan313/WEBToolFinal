/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ruoran.controller;

import com.ruoran.DAO.UserDAO;
import com.ruoran.pojo.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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

    @RequestMapping("/logout.htm")
    public String logout(HttpServletRequest request) {
        request.getSession().invalidate();
        return "index";

    }

    @RequestMapping("/register.htm")
    public String register() {

        return "register";
    }

    @RequestMapping("/index.htm")
    public String index() {

        return "index";
    }

    @RequestMapping("/confirmLogin.htm")
    public String confirmLogin(HttpServletRequest request, UserDAO userDao) {
        String useremail = request.getParameter("email");
        String password = request.getParameter("password");
        try {
            User user = userDao.get(useremail, password);
            if (user != null) {
                System.out.println(user.getUid());
                HttpSession session = request.getSession();
                session.setAttribute("existUser", user);
                return "index";
            } else {
                return "errorPage";
            }
        } catch (Exception e) {
            return "errorPage";
        }

    }

    @RequestMapping("/registerValid.htm")
    public String registerValid(HttpServletRequest request, UserDAO userDao) {
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String useremail = request.getParameter("email");
        String password = request.getParameter("pass");
        String mobilenumber = request.getParameter("mobilenumber");
        String address = request.getParameter("address");
        User user = new User();
        user.setAddr(address);
        user.setLname(lname);
        user.setEmail(useremail);
        user.setFname(fname);
        user.setPassword(password);
        user.setPhone(lname);
        try {
            userDao.register(user);
            HttpSession session = request.getSession();
            session.setAttribute("existUser", user);
        } catch (Exception e) {
            System.out.println(e);
            return "errorPage";
        }

        return "index";
    }

    @RequestMapping(value = "/findbyEmail.htm", method = RequestMethod.POST)
    @ResponseBody
    public String ajaxService(HttpServletRequest request, UserDAO userDao) {
        String useremail = request.getParameter("useremail");
        System.out.println("com.ruoran.controller.UserController.ajaxService()" + useremail);
        String result = "";

        User user = userDao.get(useremail);
        if (user != null) {
            System.out.println(user.getUid());
            return "This email has been used, Please use another one";

        } else {
            return "You can use this email!";
        }

    }

    @RequestMapping("/addindb.htm")
    public String add(HttpServletRequest request) {
// String useremail = request.getParameter("username");
//			String password = request.getParameter("password");
        UserDAO userDao = new UserDAO();
        User user = new User();
        user.setEmail("rwrew");
        user.setPassword("grgre");
//        user.setState(0);
        try {
            User u = userDao.register(user);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "index";
    }

}
