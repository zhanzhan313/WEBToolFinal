<!DOCTYPE html>
<html>
    <head>
        <title>Checkout Page</title>
        <style>
            .img-responsive{
                weight:100%;
                height:100px;
            }
        </style>
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
        <script src="js/simpleCart.min.js"></script>
        <!-- cart -->
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
    </head>
    <body >

        <%@include file="menu.jsp" %> 

        <div class="cart-items">
            <div class="container">
                <div class="dreamcrub">
                    <ul class="breadcrumbs">
                        <li class="home">
                            <a href="${contextPath}/WEBToolFinal/index.htm" title="Go to Home Page">Home</a>&nbsp;
                            <span>&gt;</span>
                        </li>
                        <li class="women">
                            Cart
                        </li>
                    </ul>
                    <ul class="previous">
                        <li><a href="${contextPath}/WEBToolFinal/index.htm">Back to Previous Page</a></li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
                <h2>MY SHOPPING BAG </h2>
                <c:set var="cart" scope="session" value="${mycart}"/>
                <c:forEach var="cartitem" items="${cart.cartItems}">
                    <div class="cart-gd">
                        <div class="cart-header">
                            <div class="close1"> </div>
                            <div class="cart-sec simpleCart_shelfItem">
                                <div class="cart-item cyc">
                                    <img src="${cartitem.product.image}" class="img-responsive" alt="">
                                </div>
                                <div class="cart-item-info">
                                    <h3><a href="#">   <c:out value="${cartitem.product.pname}"></c:out>
                                            </a><span>Pickup time:</span></h3>
                                        <ul class="qty">
                                            <li><p>Min. order value:</p></li>
                                            <li><p>FREE delivery</p></li>
                                        </ul>
                                        <div class="delivery">
                                            <p>Service Charges : $10.00</p>
                                            <span>Delivered in 1-1:30 hours</span>
                                            <div class="clearfix"></div>
                                        </div>	
                                    </div>
                                    <div class="clearfix"></div>

                                </div>
                            </div>
                        </div>

                </c:forEach>
                <script>$(document).ready(function (c) {
                        $('.close1').on('click', function (c) {
                            $('.cart-header').fadeOut('slow', function (c) {
                                $('.cart-header').remove();
                            });
                        });
                    });
                </script>



            </div>
        </div>

        <!-- //checkout -->	
        <div class="news-letter">
            <div class="container">
                <div class="join">
                    <h6>JOIN OUR MAILING LIST</h6>
                    <div class="sub-left-right">
                        <form>
                            <input type="text" value="Enter Your Email Here" onfocus="this.value = '';" onblur="if (this.value == '') {
                                        this.value = 'Enter Your Email Here';
                                    }" />
                            <input type="submit" value="SUBSCRIBE" />
                        </form>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %> 
    </body>
</html>