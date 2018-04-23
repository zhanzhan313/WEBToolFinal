<!DOCTYPE html>
<html>
<head> 
<title>Online CD shop</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Eshop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<!-- for bootstrap working -->
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- cart -->
	<script src="js/simpleCart.min.js"> </script>
<!-- cart -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

</head>
<body>
<%@include file="menu.jsp" %>  
	
<div class="registration-form">
	<div class="container">
	<div class="dreamcrub">
			   	 <ul class="breadcrumbs">
                    <li class="home">
                       <a href="${contextPath}/WEBToolFinal/index.htm" title="Go to Home Page">Home</a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li class="women">
                       Registration
                    </li>
                </ul>
                <ul class="previous">
                	<li><a href="${contextPath}/WEBToolFinal/index.htm">Back to Previous Page</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
		<h2>Registration</h2>
		<div class="registration-grids">
			<div class="reg-form">
				<div class="reg">
					 <p>Welcome, please enter the following details to continue.</p>
					 <p>If you have previously registered with us, <a href="${contextPath}/WEBToolFinal/account.htm">click here</a></p>
                                         <form action="registerValid.htm">
						 <ul>
							 <li class="text-info">First Name: </li>
							 <li><input id="fname" name="fname" type="text" ><span id="uspan"></span></li>
						 </ul>
						 <ul>
							 <li class="text-info">Last Name: </li>
							 <li><input name="lname" type="text" ></li>
						 </ul>				 
						<ul>
							 <li class="text-info">Email: </li>
                                                         <li><input name="email" id="email" type="text" onblur="checkEmailIfused()" ><span id="demo"></span></li>
						 </ul>
						 <ul>
							 <li class="text-info">Password: </li>
							 <li><input name="pass" type="password" ></li>
						 </ul>
						 <ul>
							 <li class="text-info">Re-enter Password:</li>
							 <li><input name="repass"  type="password" ></li>
						 </ul>
						 <ul>
							 <li class="text-info">Mobile Number:</li>
							 <li><input name="mobilenumber" type="text" ></li>
						 </ul>						
						 <ul>
							 <li class="text-info">Address:</li>
							 <li><input name="address" type="text" ></li>
						 </ul>						
                                             <input type="submit" value="REGISTER NOW" onclick="checkForm()">
						 <p class="click">By clicking this button, you are agree to my  <a href="#">Policy Terms and Conditions.</a></p> 
					 </form>
				 </div>
			</div>
			<div class="reg-right">
				 <h3>Completely Free Account</h3>
				 <div class="strip"></div>
				 <p>Pellentesque neque leo, dictum sit amet accumsan non, dignissim ac mauris. Mauris rhoncus, lectus tincidunt tempus aliquam, odio 
				 libero tincidunt metus, sed euismod elit enim ut mi. Nulla porttitor et dolor sed condimentum. Praesent porttitor lorem dui, in pulvinar enim rhoncus vitae. Curabitur tincidunt, turpis ac lobortis hendrerit, ex elit vestibulum est, at faucibus erat ligula non neque.</p>
				 <h3 class="lorem">Lorem ipsum dolor.</h3>
				 <div class="strip"></div>
				 <p>Tincidunt metus, sed euismod elit enim ut mi. Nulla porttitor et dolor sed condimentum. Praesent porttitor lorem dui, in pulvinar enim rhoncus vitae. Curabitur tincidunt, turpis ac lobortis hendrerit, ex elit vestibulum est, at faucibus erat ligula non neque.</p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- registration-form -->

		<div class="news-letter">
			<div class="container">
				<div class="join">
					<h6>JOIN OUR MAILING LIST</h6>
					<div class="sub-left-right">
						<form>
							<input type="text" value="Enter Your Email Here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your Email Here';}" />
							<input type="submit" value="SUBSCRIBE" />
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<div class="footer">
		<div class="container">
		 <div class="footer_top">
			<div class="span_of_4">
				<div class="col-md-3 span1_of_4">
					<h4>Shop</h4>
					<ul class="f_nav">
						<li><a href="#">new arrivals</a></li>
						<li><a href="#">men</a></li>
						<li><a href="#">women</a></li>
						<li><a href="#">accessories</a></li>
						<li><a href="#">kids</a></li>
						<li><a href="#">brands</a></li>
						<li><a href="#">trends</a></li>
						<li><a href="#">sale</a></li>
						<li><a href="#">style videos</a></li>
					</ul>	
				</div>
				<div class="col-md-3 span1_of_4">
					<h4>help</h4>
					<ul class="f_nav">
						<li><a href="#">frequently asked  questions</a></li>
						<li><a href="#">men</a></li>
						<li><a href="#">women</a></li>
						<li><a href="#">accessories</a></li>
						<li><a href="#">kids</a></li>
						<li><a href="#">brands</a></li>
					</ul>	
				</div>
				<div class="col-md-3 span1_of_4">
					<h4>account</h4>
					<ul class="f_nav">
						<li><a href="account.html">login</a></li>
						<li><a href="register.html">create an account</a></li>
						<li><a href="#">create wishlist</a></li>
						<li><a href="checkout.html">my shopping bag</a></li>
						<li><a href="#">brands</a></li>
						<li><a href="#">create wishlist</a></li>
					</ul>				
				</div>
				<div class="col-md-3 span1_of_4">
					<h4>popular</h4>
					<ul class="f_nav">
						<li><a href="#">new arrivals</a></li>
						<li><a href="#">men</a></li>
						<li><a href="#">women</a></li>
						<li><a href="#">accessories</a></li>
						<li><a href="#">kids</a></li>
						<li><a href="#">brands</a></li>
						<li><a href="#">trends</a></li>
						<li><a href="#">sale</a></li>
						<li><a href="#">style videos</a></li>
						<li><a href="#">login</a></li>
						<li><a href="#">brands</a></li>
					</ul>			
				</div>
				<div class="clearfix"></div>
				</div>
		  </div>
		  <div class="cards text-center">
				<img src="images/cards.jpg" alt="" />
		  </div>
		  <div class="copyright text-center">
				<p>© 2015 Eshop. All Rights Reserved | Design by   <a href="http://www.smallseashell.com"> 小贝壳网站模板 </a></p>
		  </div>
		</div>
		</div>
</body>
</html>
<script type="text/javascript">
    function checkForm(){
        var username= document.getElementById("fname").value;
        if(username == ""|| username== null){
            var uspan = document.getElementById("uspan");
			uspan.innerHTML = "!!!!";
//            alert("!");
            return false;
        }
        
    }
   
    function checkEmailIfused() {
  var xhttp;
  if (window.XMLHttpRequest) {
    // code for modern browsers
    xhttp = new XMLHttpRequest();
    } else {
    // code for IE6, IE5
    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
  }
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("demo").innerHTML = this.responseText;
    }
  };
   var email= document.getElementById("email").value;
  xhttp.open("POST", "${contextPath}/WEBToolFinal/findbyEmail.htm?time="+new Date().getTime()+"&useremail="+email, true);
  xhttp.send();
}
</script>