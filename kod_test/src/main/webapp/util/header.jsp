<%@page import="controller.WishListService"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.dto.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- HEADER -->
	<header>
		<!-- TOP HEADER -->
		<div id="top-header">
			<div class="container">
				<ul class="header-links pull-left">
					<li><a href="mapPage.do"><i class="fa fa-map-marker"></i>
							찾아오시는 길</a></li>
				</ul>
				<%
				if((MemberDTO)session.getAttribute("memberDTO")==null){
				%>
				<ul class="header-links pull-right">
					<li><a href="loginPage.do"><i class="fa fa-user-o"></i>
							로그인</a></li>
					<li><a href="joinPage.do"><i class="fa fa-user-o"></i>
							회원가입</a></li>
				</ul>
				<%}else{ %>
				<ul class="header-links pull-right">
					<li><a href="logout.do"><i class="fa fa-user-o"></i>
							로그아웃</a></li>
					<li><a href="myPage.do"><i class="fa fa-user-o"></i>
							마이페이지</a></li>
				</ul>
				<%} %>
			</div>
		</div>
		<!-- /TOP HEADER -->

		<!-- MAIN HEADER -->
		<div id="header">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- LOGO -->
					<div class="col-md-3">
						<div class="header-logo">
							<a href="main.do" class="logo"> <img src="./img/logo.png" alt="">
							</a>
						</div>
					</div>
					<!-- /LOGO -->

					<!-- SEARCH BAR -->
					<div class="col-md-6">
						<div class="header-search">
							<form>
								<select class="input-select">
									<option value="0">All Categories</option>
									<option value="1">Category 01</option>
									<option value="1">Category 02</option>
								</select> <input class="input" placeholder="Search here">
								<button class="search-btn">Search</button>
							</form>
						</div>
					</div>
					<!-- /SEARCH BAR -->

					<!-- ACCOUNT -->
					<div class="col-md-3 clearfix">
						<div class="header-ctn">
							<!-- Wishlist -->
							<div>
								<a href="wishList.do"> <i class="fa fa-heart-o"></i> <span>My
										Wishlist</span>
								<%
								    // request.getAttribute("wishListCnt")의 값을 가져오기
								    Integer wishListCntObj = (Integer)request.getAttribute("wishListCnt");
								    // 값이 null이면 0으로 설정, 그렇지 않으면 가져온 값 사용
								    int wishListCnt = (wishListCntObj != null) ? wishListCntObj : 0;
								%>
								<div class="qty"><%=wishListCnt%></div>
								</a>
								
							</div>
							<!-- /Wishlist -->

							<!-- Cart -->
							<div class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown"
									aria-expanded="true"> <i class="fa fa-shopping-cart"></i> <span>Your
										Cart</span>
									<div class="qty">3</div>
								</a>
								<div class="cart-dropdown">
									<div class="cart-list">
										<div class="product-widget">
											<div class="product-img">
												<img src="./img/product01.png" alt="">
											</div>
											<div class="product-body">
												<h3 class="product-name">
													<a href="#">product name goes here</a>
												</h3>
												<h4 class="product-price">
													<span class="qty">1x</span>$980.00
												</h4>
											</div>
											<button class="delete">
												<i class="fa fa-close"></i>
											</button>
										</div>
									</div>
									<div class="cart-summary">
										<small>3 Item(s) selected</small>
										<h5>SUBTOTAL: $2940.00</h5>
									</div>
									<div class="cart-btns">
										<a href="#">View Cart</a> <a href="#">Checkout <i
											class="fa fa-arrow-circle-right"></i></a>
									</div>
								</div>
							</div>
							<!-- /Cart -->

							<!-- Menu Toogle -->
							<div class="menu-toggle">
								<a href="#"> <i class="fa fa-bars"></i> <span>Menu</span>
								</a>
							</div>
							<!-- /Menu Toogle -->
						</div>
					</div>
					<!-- /ACCOUNT -->
				</div>
				<!-- row -->
			</div>
			<!-- container -->
		</div>
		<!-- /MAIN HEADER -->
	</header>
	<!-- /HEADER -->
</body>
</html>