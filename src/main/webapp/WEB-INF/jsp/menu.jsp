<%-- 
    Document   : menu.jsp
    Created on : Apr 21, 2018, 1:21:36 AM
    Author     : 站站
--%>

<%@page import="com.ruoran.pojo.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  User user =(User) session.getAttribute("existUser");
boolean ifexist=(user==null)?false:true;
            %>
<div class="header">
		<div class="header-top-strip">
			<div class="container">
				<div class="header-top-left">
					<ul>
                                            <li><a href=productList.htm><span class='glyphicon glyphicon-user'> </span>ProductList</a></li>
                                            <%
                                            if(!ifexist){
                                                out.print("<li><a href=account.htm><span class='glyphicon glyphicon-user'> </span>Login</a></li><li><a href=register.htm><span class='glyphicon glyphicon-lock'> </span>Create an Account</a></li>");
                                            }
                                            if(ifexist){
                                             out.print("<li><a href='#'><span class='glyphicon glyphicon-user'> </span> WelCome "+user.getFname()+" !</a></li><li><a href=logout.htm><span class='glyphicon glyphicon-lock'> </span>Logout</a></li>");}
    %>
                                   
                                            </ul>
				</div>
				<div class="header-right">
						<div class="cart box_1">
							<a href="checkout.html">
								<h3> <span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)<img src="images/bag.png" alt=""></h3>
							</a>	
							<p><a href="javascript:;" class="simpleCart_empty">Empty cart</a></p>
							<div class="clearfix"> </div>
						</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- header-section-ends -->
	<div class="inner-banner">
		<div class="container">
			<div class="banner-top inner-head">
				<nav class="navbar navbar-default" role="navigation">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
	        </button>
				<div class="logo">
					<h1><a href="${contextPath}/WEBToolFinal/index.htm"><span>E</span> -Shop</a></h1>
				</div>
	    </div>
	    <!--/.navbar-header-->
	
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	        <ul class="nav navbar-nav">
			<li><a href="${contextPath}/WEBToolFinal/index.htm">Home</a></li>
		        <li class="dropdown">
		            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Men <b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-3">
			            <div class="row">
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>NEW IN</h6>
						            <li><a href="products.html">New In Clothing</a></li>
						            <li><a href="products.html">New In Bags</a></li>
						            <li><a href="products.html">New In Shoes</a></li>
						            <li><a href="products.html">New In Watches</a></li>
						            <li><a href="products.html">New In Grooming</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>CLOTHING</h6>
						            <li><a href="products.html">Polos & Tees</a></li>
						            <li><a href="products.html">Casual Shirts</a></li>
						            <li><a href="products.html">Casual Trousers</a></li>
						            <li><a href="products.html">Jeans</a></li>
						            <li><a href="products.html">Shorts & 3/4th</a></li>
						            <li><a href="products.html">Formal Shirts</a></li>
						            <li><a href="products.html">Formal Trousers</a></li>
						            <li><a href="products.html">Suits & Blazers</a></li>
						            <li><a href="products.html">Track Wear</a></li>
						            <li><a href="products.html">Inner Wear</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>WATCHES</h6>
						            <li><a href="products.html">Analog</a></li>
						            <li><a href="products.html">Chronograph</a></li>
						            <li><a href="products.html">Digital</a></li>
						            <li><a href="products.html">Watch Cases</a></li>
					            </ul>
				            </div>
							<div class="clearfix"></div>
			            </div>
		            </ul>
		        </li>
		        <li class="dropdown">
		            <a href="#" class="dropdown-toggle" data-toggle="dropdown">women <b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-3">
			            <div class="row">
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>NEW IN</h6>
						            <li><a href="products.html">New In Clothing</a></li>
						            <li><a href="products.html">New In Bags</a></li>
						            <li><a href="products.html">New In Shoes</a></li>
						            <li><a href="products.html">New In Watches</a></li>
						            <li><a href="products.html">New In Beauty</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>CLOTHING</h6>
						            <li><a href="products.html">Polos & Tees</a></li>
						            <li><a href="products.html">Casual Shirts</a></li>
						            <li><a href="products.html">Casual Trousers</a></li>
						            <li><a href="products.html">Jeans</a></li>
						            <li><a href="products.html">Shorts & 3/4th</a></li>
						            <li><a href="products.html">Formal Shirts</a></li>
						            <li><a href="products.html">Formal Trousers</a></li>
						            <li><a href="products.html">Suits & Blazers</a></li>
						            <li><a href="products.html">Track Wear</a></li>
						            <li><a href="products.html">Inner Wear</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-4">
					            <ul class="multi-column-dropdown">
									<h6>WATCHES</h6>
						            <li><a href="products.html">Analog</a></li>
						            <li><a href="products.html">Chronograph</a></li>
						            <li><a href="products.html">Digital</a></li>
						            <li><a href="products.html">Watch Cases</a></li>
					            </ul>
				            </div>
							<div class="clearfix"></div>
			            </div>
		            </ul>
		        </li>
		        <li class="dropdown">
		        	<a href="#" class="dropdown-toggle" data-toggle="dropdown">kids <b class="caret"></b></a>
		            <ul class="dropdown-menu multi-column columns-2">
			            <div class="row">
				            <div class="col-sm-6">
					            <ul class="multi-column-dropdown">
									<h6>NEW IN</h6>
						            <li><a href="products.html">New In Boys Clothing</a></li>
						            <li><a href="products.html">New In Girls Clothing</a></li>
						            <li><a href="products.html">New In Boys Shoes</a></li>
						            <li><a href="products.html">New In Girls Shoes</a></li>
					            </ul>
				            </div>
				            <div class="col-sm-6">
					             <ul class="multi-column-dropdown">
									<h6>ACCESSORIES</h6>
						            <li><a href="products.html">Bags</a></li>
						            <li><a href="products.html">Watches</a></li>
						            <li><a href="products.html">Sun Glasses</a></li>
						            <li><a href="products.html">Jewellery</a></li>
					            </ul>
				            </div>
							<div class="clearfix"></div>
			            </div>
		            </ul>
		        </li>
					<li><a href="typography.html">TYPO</a></li>
					<li><a href="${contextPath}/WEBToolFinal/contact.htm">CONTACT</a></li>
	        </ul>
	    </div>
	    <!--/.navbar-collapse-->
	</nav>
	<!--/.navbar-->
</div>
	</div>
		</div>