<%-- 
    Document   : hello
    Created on : Apr 25, 2018, 1:12:01 PM
    Author     : 站站
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  String name =  String.valueOf(request.getAttribute("bookname"));
           
        %>
        <h1><%=name%>Hello World!</h1>
    </body>
</html>
