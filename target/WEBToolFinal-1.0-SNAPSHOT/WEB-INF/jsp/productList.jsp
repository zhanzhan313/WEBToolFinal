<%-- 
    Document   : ProDuctList
    Created on : Apr 24, 2018, 2:30:00 AM
    Author     : ruoran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            .layout-container {

                max-width: 1140px;
                padding-right: 30px;
                padding-left: 30px;
                margin-right: auto;
                margin-left: auto;
            }
            .product-grid {
                padding-top: 5%;
                padding-bottom: 5%;
                margin-right: 0%;
            }
            .product-image {
                width: 100%;
                height: 0;
                padding-bottom: 66.66667%;
                background-position: 50% 50%;
                background-repeat: no-repeat;
                background-size: cover;
            }
            .image-container {
                position: relative;
            }
            .image-container:hover .product-image{
                opacity: 0.3;
                background-size:120%;
            }
            .image-container:hover .overlay{
                opacity: 1;
            }
            .overlay {
                transition: .5s ease;
                opacity: 0;
                position: absolute;
                top: 50%;
                left: 50%;
                text-align: center;
                transform: translate(-50%, -50%);
                -ms-transform: translate(-50%, -50%)
            }
            .overlay .button {
                width: 160px;
                line-height: 38px;
            }
            .overlay .button:first-child {
                margin-bottom: 2em;
            }
            .product-details {
                padding-top: 15px;
                text-align: center;
                margin-bottom: 40px;
            }
            .product-brand {
                display: block;
                margin: .5em 0;
                color: #7d7d7d;
            }
            .product-title {
                text-transform: uppercase;
                letter-spacing: .05em;
                margin-top: 0;
                margin-bottom: .5em;
                font-size: 1em;
                line-height: 1.2;
                font-weight: 400;
                font-family: Roboto;
            }
            .product-price {
                font-size: 1.14286em;
                color: #9f9f9f;
                font-family: Playfair Display;
            }
            .product-price {
                font-size: 1.14286em;
                color: #6e7e94;
                font-family: Playfair Display;
            }
            .btn-success{
                background-color: #7d7d7d;
                border: 0ch;
            }
            .background-image{
                margin-right: auto;
                margin-left: 17%;
                margin-bottom: 25%;
                border:1px solid #000;
                width:65%; 
                height:200px;
            }
            .buttoncontainer{
                margin-left: 45%;
                margin-top: 5%;
            }
            .Contentcontainer{
                margin-left: 28%;
                margin-top: 5%;
            }
            .background-image-detail{
                margin-right: auto;
                margin-left: auto;
                margin-bottom: 25%;
                border:1px solid #000;
                width:60%; 

            }
            .product-image-detail{
                width: 90%;
                height: 0;
                margin-right: auto;
                margin-left: auto;
                padding-left: 30%;
                padding-bottom: 55%;
                background-position: 50% 50%;
                background-repeat: no-repeat;
                background-size: cover;
            }

            
        </style>
        <link href="./css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="./js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
        <link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
    </head>


    <body>
        <div class="layout-container">
            <div id="formItem_wrap" class="product-grid row">

            </div>
        </div>
        <script type="text/javascript">

            var url = "https://www.googleapis.com/books/v1/volumes?q=science&filter=paid-ebooks&printType=books&orderBy=newest&projection=full&maxResults=40&key=AIzaSyDJDuTh2FkoJ9w9aBbgL3YGZnJtcVGJgZQ";

            function getBooks(url, callback) {
                var xHttp = new XMLHttpRequest();
                xHttp.open('GET', url, true);
                xHttp.responseType = 'text';
                xHttp.onload = function (e) {
                    if (this.status == 200) {
                        callback(JSON.parse(this.responseText));
                    }
                };
                xHttp.send();
            }
            getBooks(url, function (data) {
                var mydiv = document.getElementById("formItem_wrap");
                for (var i = 0; i < data.items.length; i++)
                {
                     if(data.items[i].saleInfo.saleability !== 'NOT_FOR_SALE' ){
                          var div3 = document.createElement("div");
                    var divIC = document.createElement("div");
                    var divPi = document.createElement("div");
                    var divOL = document.createElement("div");
                    var divView = document.createElement("div");
                    var divADD = document.createElement("div");

                    divADD.setAttribute("class", "btn btn-success");
//                                divADD.setAttribute("(click)","addToCart(product)");
                    divADD.innerHTML = "ADD";
                    divView.setAttribute("class", "btn btn-success");

                    var bigImg = document.createElement("img");
                    bigImg.setAttribute("class", "background-image");
                    bigImg.src = data.items[i].volumeInfo.imageLinks.thumbnail;

                    divView.innerHTML = "View Detail";
                    divOL.appendChild(divView);

                    divOL.appendChild(divADD);
                    div3.setAttribute("class", "col-md-3");
                    divOL.setAttribute("class", "overlay");
                    divIC.setAttribute("class", "image-container");

                    divPi.appendChild(bigImg);
                    divIC.appendChild(divPi);
                    divIC.appendChild(divOL);
                    var divPd = document.createElement("div");
                    divPd.setAttribute("class", "product-details");
                    var divpt = document.createElement("div");
                    divpt.setAttribute("class", "product-title");
                    divpt.innerHTML = data.items[i].volumeInfo.title;
                    var divpp = document.createElement("div");
                     divpp.innerHTML = "\$"+data.items[i].saleInfo.retailPrice.amount+"";
                     divpp.setAttribute("class", "product-price");
                     divPd.appendChild(divpt);
                     divPd.appendChild(divpp);
                    div3.appendChild(divIC);
                    div3.appendChild(divPd);
                    mydiv.appendChild(div3);
                    }
                   
                }
                //            data.items.forEach(element => {
                //             
                //            });
            });



        </script>


    </body>

</html>