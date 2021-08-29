<%@page import="get.ProductGet"%>
<%@page import="model.Product"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>GUITAR SHOP - FHQ WATCH SHOP</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Classic Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- js -->
        <script src="js/jquery.min.js"></script>
        <!-- //js -->
        <!-- cart -->
        <script src="js/simpleCart.min.js"></script>
        <!-- cart -->
        <!-- for bootstrap working -->
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <!-- //for bootstrap working -->
        <!-- animation-effect -->
        <link href="css/animate.min.css" rel="stylesheet"> 
        <script src="js/wow.min.js"></script>
        <script>
            new WOW().init();
        </script>
        <!-- //animation-effect -->
        <link href='//fonts.googleapis.com/css?family=Cabin:400,500,600,700' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <%
            ProductGet productGet = new ProductGet();
            String category_id_2 = "2";
            if (request.getParameter("category") != null) {
                category_id_2 = request.getParameter("category");

            }
            DecimalFormat formatter = new DecimalFormat("###,###,###");
        %>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="banner-top">
                <div class="container">
                    <h2 class="animated wow fadeInLeft" data-wow-delay=".5s">WATCH SHOP</h2>
                    <h3 class="animated wow fadeInRight" data-wow-delay=".5s"><a href="index.jsp">Trang Chủ</a><label>/</label>Piano-Organ Shop</h3>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="login">
                <div class="container">
                    <h4 align="justify">Cuộc sống chỉ là 10% những gì xảy ra với bạn, 90% còn lại là cách bạn phản ứng với nó. Chính chúng ta mới là người quyết định cuộc sống của mình như thế nào, chứ không phải là do những sự việc xảy ra trong cuộc sống của chúng ta quyết định. Vì thế hãy luôn trân trọng những giây phút hiện tại đang được sống, được trải nghiệm, được sai lầm và trọn vẹn những niềm vui nhé!</h4>
                    <div class="page-header">
                        <h3>WOMAN'S WATCH</h3>
                    </div>

                    <div class=" animated wow fadeInRight" data-wow-delay=".1s">
                    <%
                        for (Product p : productGet.getListProductByCategory(Long.parseLong(category_id_2))) {
                    %>

                    <div class="col-sm-4 item-grid simpleCart_shelfItem">
                        <div class="grid-pro">
                            <div  class=" grid-product " >
                                <figure>		
                                    <a href="single.jsp?productID=<%=p.getProductID()%>">
                                        <div class="grid-img">
                                            <img  src="<%=p.getProductImageBack()%>" class="img-responsive" alt="">
                                        </div>
                                        <div class="grid-img">
                                            <img  src="<%=p.getProductImageForward()%>"  alt="" width="132%" height="180" class="img-responsive">
                                        </div>			
                                    </a>		
                                </figure>	
                            </div>
                            <div class="women">
                                <a href="#"><img src="images/ll.png" alt=""></a>
                                <h6><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
                                <p><em class="item_price"><%=formatter.format(p.getProductPrice())%> VNĐ</em></p>
                                <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
                            </div>
                        </div>
                    </div>

                    <%  } %>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="social animated wow fadeInUp" data-wow-delay=".1s">
            <div class="container">
                <div class="col-sm-3 social-ic">
                    <a href="#">FACEBOOK</a>
                </div>
                <div class="col-sm-3 social-ic">
                    <a href="#">TWITTER</a>
                </div>
                <div class="col-sm-3 social-ic">
                    <a href="#">GOOGLE+</a>
                </div>
                <div class="col-sm-3 social-ic">
                    <a href="#">PINTEREST</a>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
