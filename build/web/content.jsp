<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Product"%>
<%@page import="get.ProductGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        ProductGet productGet = new ProductGet();     
    String category_id_1 = "1";
    String category_id_6 = "2";
    String category_id_4 = "1";
    if(request.getParameter("category")!=null){
    category_id_1 = request.getParameter("category");
    category_id_6 = request.getParameter("category");
    category_id_4 = request.getParameter("category");
    }
    DecimalFormat formatter = new DecimalFormat("###,###,###");
            %>
        		<div class="content">
		<div class="content-head">
					
					<div class="col-md-6 col-m1 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-1">
						<div class="col-md-6 col-2">
							<a href="manwatch.jsp"><img src="images/men.jpg" class="img-responsive" alt="">
							</a></div>
							<div class="col-md-6 col-p">
								<h5>MEN'S WATCH SHOP</h5>
								<p>Chúng tôi có rất nhiều những sản phẩm nổi tiếng từ các hãng lớn như Casio,Rolex,...</p>
								<a href="manwatch.jsp" class="shop" data-hover="Xem Ngay">Xem Ngay</a>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-1">
						<div class="col-md-6 col-p">
								<h5>WOMEN'S WATCH SHOP</h5>
								<p>Chúng tôi có rất nhiều những sản phẩm nổi tiếng từ các hãng lớn như Casio,Rolex,...</p>
								<a href="womanwatch.jsp" class="shop" data-hover="Xem Ngay">Xem Ngay</a>
							</div>
						<div class="col-md-6 col-2">
							<a href="womanwatch.jsp"><img src="images/woman.jpg" class="img-responsive" alt="">
							</a></div>
							<div class="clearfix"> </div>
						</div>
						</div>
					
					<div class="col-md-6 col-m2 animated wow fadeInRight" data-wow-delay=".1s">
					
						<!---->
						 <!-- requried-jsfiles-for owl -->
							<link href="css/owl.carousel.css" rel="stylesheet">
							    <script src="js/owl.carousel.js"></script>
							        <script>
									    $(document).ready(function() {
									      $("#owl-demo").owlCarousel({
									        items : 2,
									        lazyLoad : false,
									        autoPlay : true,
									        navigation : true,
									        navigationText :  true,
									        pagination : false,
									      });
									    });
									  </script>
							 <!-- //requried-jsfiles-for owl -->
							 <!-- start content_slider -->
						       <div id="owl-demo" class="owl-carousel">
                                                            <%
                                for (Product p : productGet.getListProductByCategory(Long.parseLong(category_id_4))) {
                                %>
					                <div class="item">					                	 
										  
											<a href="single.jsp?productID=<%=p.getProductID()%>"><img class="img-responsive" src="<%=p.getProductImageForward()%>" alt="" /></a>  
											<a href="single.jsp?productID=<%=p.getProductID()%>" class="shop-2" >Xem Ngay</a>
								
					                </div>
                                    
                                                        <% } %>
									
							</div>
					   </div>
					   <div class="clearfix"></div>
			
					</div>
                                                        
                                        
				
			<!---->
			
				<div class="content-top">
					<div class="col-md-5 col-md1 animated wow fadeInLeft" data-wow-delay=".1s">
						<div class="col-3">
							<a href="manwatch.jsp"><img src="images/bg1.jpg" class="img-responsive " alt="">
							<div class="col-pic">	
								<h5> Men's Watch</h5>
								<p>Kiểu dáng hiện đại</p>
							</div></a>
						</div>
						
					</div>
					<div class="col-md-7 col-md2 animated wow fadeInRight" data-wow-delay=".1s">
                                            <% 
                                for (Product p : productGet.getList3ProductByCategory(Long.parseLong(category_id_1))) {
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
									
									<h6><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
									<p><em class="item_price"><%=formatter.format(p.getProductPrice())%> VNĐ</em></p>
									<a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>
						</div>
				
						<%  } %>
					<div class="clearfix"></div>
					</div>
					
				<!----->
				<!---->
				<div class="content-top">
					
					<div class="col-md-7 col-md2 animated wow fadeInLeft" data-wow-delay=".1s">
          <% for (Product p : productGet.getList3ProductByCategory(Long.parseLong(category_id_6))) { %> 
						<div class="col-sm-4 item-grid simpleCart_shelfItem">
							<div class="grid-pro">
								<div  class=" grid-product " >
									<figure>		
										<a href="single.jsp?productID=<%=p.getProductID()%>">
											<div class="grid-img">
												<img  src="<%=p.getProductImageBack()%>" class="img-responsive" alt="">
											</div>
											<div class="grid-img">
												<img  src="<%=p.getProductImageForward()%>" class="img-responsive"  alt="">
											</div>			</a>		
									</figure>	
								</div>
								<div class="women">
								
									<h6><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%></a></h6>
									<p ><em class="item_price"><%=formatter.format(p.getProductPrice())%> VNĐ</em></p>
									<a href="CartServlet?command=plus&productID=<%=p.getProductID()%>" data-text="Thêm vào giỏ" class="but-hover1 item_add">Thêm vào giỏ</a>
								</div>
							</div>	
						</div>				
						<% } %>

					<div class="clearfix"></div>
					</div>
					<div class="col-md-5 col-md1 animated wow fadeInRight" data-wow-delay=".1s">
						<div class="col-3">
							<a href="womanwatch.jsp"><img src="images/bg2.jpg" class="img-responsive " alt="">
							<div class="col-pic">
								<h5>Woman's Watch</h5>
								<p>Thiết kế ấn tượng, thời trang</p>
							</div></a>
						</div>
						
					</div>
					<div class="clearfix"></div>
				</div>
    </body>
</html>
