<%-- 
    Document   : hello
    Created on : Apr 25, 2018, 1:12:01 PM
    Author     : 站站
--%>

<%@page import="com.ruoran.pojo.CartItem"%>
<%@page import="com.ruoran.pojo.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  Cart mycart =(Cart) session.getAttribute("mycart");
boolean ifexist=(mycart==null)?false:true;
for(CartItem cartItem:mycart.getCartItems())
System.out.println("there is "+cartItem.getProduct().getPname());

            %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
<%=mycart%>
    </body>
</html>
