<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ include file="/common/taglib.jsp" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="utf-8" />
			<title>Bootshop online Shopping cart</title>
			<meta name="viewport" content="width=device-width, initial-scale=1.0" />
			<meta name="description" content="" />
			<meta name="author" content="" />
			

			<!-- Bootstrap style -->
			<link id="callCss" rel="stylesheet" href="template/web/themes/bootshop/bootstrap.min.css" media="screen" />
			<link href="template/web/themes/css/base.css" rel="stylesheet" media="screen" />
			<!-- Bootstrap style responsive -->
			<link href="template/web/themes/css/bootstrap-responsive.min.css" rel="stylesheet" />
			<link href="template/web/themes/css/font-awesome.css" rel="stylesheet" type="text/css" />
			<!-- Google-code-prettify -->
			<link href="template/web/themes/js/google-code-prettify/prettify.css" rel="stylesheet" />
			<!-- fav and touch icons -->
			<link rel="shortcut icon" href="template/web/themes/images/ico/favicon.ico" />
			<link rel="apple-touch-icon-precomposed" sizes="144x144"
				href="template/web/themes/images/ico/apple-touch-icon-144-precomposed.png" />
			<link rel="apple-touch-icon-precomposed" sizes="114x114"
				href="template/web/themes/images/ico/apple-touch-icon-114-precomposed.png" />
			<link rel="apple-touch-icon-precomposed" sizes="72x72"
				href="template/web/themes/images/ico/apple-touch-icon-72-precomposed.png" />
			<link rel="apple-touch-icon-precomposed"
				href="template/web/themes/images/ico/apple-touch-icon-57-precomposed.png" />
			<style type="text/css" id="enject"></style>
		</head>

		<body>
			<%@ include file="/common/web/header.jsp" %>
				<!-- Header End====================================================================== -->
				<div id="carouselBlk">
					<div id="myCarousel" class="carousel slide">
						<div class="carousel-inner">
							<div class="item active">
								<div class="container">
									<a href="register.html"><img style="width: 100%"
											src="template/web/themes/images/carousel/1.png" alt="special offers" /></a>
									<div class="carousel-caption">
										<h4>Second Thumbnail label</h4>
										<p>
											Luong the luc
										</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="container">
									<a href="register.html"><img style="width: 100%"
											src="template/web/themes/images/carousel/2.png" alt="" /></a>
									<div class="carousel-caption">
										<h4>Second Thumbnail label</h4>
										<p>
											Cras justo odio, dapibus ac facilisis in, egestas eget quam.
											Donec id elit non mi porta gravida at eget metus. Nullam id
											dolor id nibh ultricies vehicula ut id elit.
										</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="container">
									<a href="register.html"><img src="template/web/themes/images/carousel/3.png"
											alt="" /></a>
									<div class="carousel-caption">
										<h4>Second Thumbnail label</h4>
										<p>
											Cras justo odio, dapibus ac facilisis in, egestas eget quam.
											Donec id elit non mi porta gravida at eget metus. Nullam id
											dolor id nibh ultricies vehicula ut id elit.
										</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="container">
									<a href="register.html"><img src="template/web/themes/images/carousel/4.png"
											alt="" /></a>
									<div class="carousel-caption">
										<h4>Second Thumbnail label</h4>
										<p>
											Cras justo odio, dapibus ac facilisis in, egestas eget quam.
											Donec id elit non mi porta gravida at eget metus. Nullam id
											dolor id nibh ultricies vehicula ut id elit.
										</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="container">
									<a href="register.html"><img src="template/web/themes/images/carousel/5.png"
											alt="" /></a>
									<div class="carousel-caption">
										<h4>Second Thumbnail label</h4>
										<p>
											Cras justo odio, dapibus ac facilisis in, egestas eget quam.
											Donec id elit non mi porta gravida at eget metus. Nullam id
											dolor id nibh ultricies vehicula ut id elit.
										</p>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="container">
									<a href="register.html"><img src="template/web/themes/images/carousel/6.png"
											alt="" /></a>
									<div class="carousel-caption">
										<h4>Second Thumbnail label</h4>
										<p>
											Cras justo odio, dapibus ac facilisis in, egestas eget quam.
											Donec id elit non mi porta gravida at eget metus. Nullam id
											dolor id nibh ultricies vehicula ut id elit.
										</p>
									</div>
								</div>
							</div>
						</div>
						<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
						<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
					</div>
				</div>
				<div id="mainBody">
					<div class="container">
						<div class="row">
							<!-- Sidebar ================================================== -->
							<%@ include file="/common/web/sidebar.jsp" %>
								<!-- Sidebar end=============================================== -->
								<div class="span9">
									<div class="well well-small">
										<h4>
											Featured Products
											<small class="pull-right">200+ featured products</small>
										</h4>
										<div class="row-fluid">
											<div id="featured" class="carousel slide">
												<div class="carousel-inner">
													<div class="item active">
														<ul class="thumbnails">
															<li class="span3">
																<div class="thumbnail">
																	<i class="tag"></i>
																	<a href="product_details.html"><img
																			src="template/web/themes/images/products/b1.jpg"
																			alt="" /></a>
																	<div class="caption">
																		<h5>Product name</h5>
																		<h4>
																			<a class="btn"
																				href="product_details.html">VIEW</a>
																			<span class="pull-right">$222.00</span>
																		</h4>
																	</div>
																</div>
															</li>
															<li class="span3">
																<div class="thumbnail">
																	<i class="tag"></i>
																	<a href="product_details.html"><img
																			src="template/web/themes/images/products/b2.jpg"
																			alt="" /></a>
																	<div class="caption">
																		<h5>Product name</h5>
																		<h4>
																			<a class="btn"
																				href="product_details.html">VIEW</a>
																			<span class="pull-right">$222.00</span>
																		</h4>
																	</div>
																</div>
															</li>
															<li class="span3">
																<div class="thumbnail">
																	<i class="tag"></i>
																	<a href="product_details.html"><img
																			src="template/web/themes/images/products/b3.jpg"
																			alt="" /></a>
																	<div class="caption">
																		<h5>Product name</h5>
																		<h4>
																			<a class="btn"
																				href="product_details.html">VIEW</a>
																			<span class="pull-right">$222.00</span>
																		</h4>
																	</div>
																</div>
															</li>
															<li class="span3">
																<div class="thumbnail">
																	<i class="tag"></i>
																	<a href="product_details.html"><img
																			src="template/web/themes/images/products/b4.jpg"
																			alt="" /></a>
																	<div class="caption">
																		<h5>Product name</h5>
																		<h4>
																			<a class="btn"
																				href="product_details.html">VIEW</a>
																			<span class="pull-right">$222.00</span>
																		</h4>
																	</div>
																</div>
															</li>
														</ul>
													</div>
													<div class="item">
														<ul class="thumbnails">
															<li class="span3">
																<div class="thumbnail">
																	<i class="tag"></i>
																	<a href="product_details.html"><img
																			src="template/web/themes/images/products/5.jpg"
																			alt="" /></a>
																	<div class="caption">
																		<h5>Product name</h5>
																		<h4>
																			<a class="btn"
																				href="product_details.html">VIEW</a>
																			<span class="pull-right">$222.00</span>
																		</h4>
																	</div>
																</div>
															</li>
															<li class="span3">
																<div class="thumbnail">
																	<i class="tag"></i>
																	<a href="product_details.html"><img
																			src="template/web/themes/images/products/6.jpg"
																			alt="" /></a>
																	<div class="caption">
																		<h5>Product name</h5>
																		<h4>
																			<a class="btn"
																				href="product_details.html">VIEW</a>
																			<span class="pull-right">$222.00</span>
																		</h4>
																	</div>
																</div>
															</li>
															<li class="span3">
																<div class="thumbnail">
																	<a href="product_details.html"><img
																			src="template/web/themes/images/products/7.jpg"
																			alt="" /></a>
																	<div class="caption">
																		<h5>Product name</h5>
																		<h4>
																			<a class="btn"
																				href="product_details.html">VIEW</a>
																			<span class="pull-right">$222.00</span>
																		</h4>
																	</div>
																</div>
															</li>
															<li class="span3">
																<div class="thumbnail">
																	<a href="product_details.html"><img
																			src="template/web/themes/images/products/8.jpg"
																			alt="" /></a>
																	<div class="caption">
																		<h5>Product name</h5>
																		<h4>
																			<a class="btn"
																				href="product_details.html">VIEW</a>
																			<span class="pull-right">$222.00</span>
																		</h4>
																	</div>
																</div>
															</li>
														</ul>
													</div>
													<div class="item">
														<ul class="thumbnails">
															<li class="span3">
																<div class="thumbnail">
																	<a href="product_details.html"><img
																			src="template/web/themes/images/products/9.jpg"
																			alt="" /></a>
																	<div class="caption">
																		<h5>Product name</h5>
																		<h4>
																			<a class="btn"
																				href="product_details.html">VIEW</a>
																			<span class="pull-right">$222.00</span>
																		</h4>
																	</div>
																</div>
															</li>
															<li class="span3">
																<div class="thumbnail">
																	<a href="product_details.html"><img
																			src="template/web/themes/images/products/10.jpg"
																			alt="" /></a>
																	<div class="caption">
																		<h5>Product name</h5>
																		<h4>
																			<a class="btn"
																				href="product_details.html">VIEW</a>
																			<span class="pull-right">$222.00</span>
																		</h4>
																	</div>
																</div>
															</li>
															<li class="span3">
																<div class="thumbnail">
																	<a href="product_details.html"><img
																			src="template/web/themes/images/products/11.jpg"
																			alt="" /></a>
																	<div class="caption">
																		<h5>Product name</h5>
																		<h4>
																			<a class="btn"
																				href="product_details.html">VIEW</a>
																			<span class="pull-right">$222.00</span>
																		</h4>
																	</div>
																</div>
															</li>
															<li class="span3">
																<div class="thumbnail">
																	<a href="product_details.html"><img
																			src="template/web/themes/images/products/1.jpg"
																			alt="" /></a>
																	<div class="caption">
																		<h5>Product name</h5>
																		<h4>
																			<a class="btn"
																				href="product_details.html">VIEW</a>
																			<span class="pull-right">$222.00</span>
																		</h4>
																	</div>
																</div>
															</li>
														</ul>
													</div>
													<div class="item">
														<ul class="thumbnails">
															<li class="span3">
																<div class="thumbnail">
																	<a href="product_details.html"><img
																			src="template/web/themes/images/products/2.jpg"
																			alt="" /></a>
																	<div class="caption">
																		<h5>Product name</h5>
																		<h4>
																			<a class="btn"
																				href="product_details.html">VIEW</a>
																			<span class="pull-right">$222.00</span>
																		</h4>
																	</div>
																</div>
															</li>
															<li class="span3">
																<div class="thumbnail">
																	<a href="product_details.html"><img
																			src="template/web/themes/images/products/3.jpg"
																			alt="" /></a>
																	<div class="caption">
																		<h5>Product name</h5>
																		<h4>
																			<a class="btn"
																				href="product_details.html">VIEW</a>
																			<span class="pull-right">$222.00</span>
																		</h4>
																	</div>
																</div>
															</li>
															<li class="span3">
																<div class="thumbnail">
																	<a href="product_details.html"><img
																			src="template/web/themes/images/products/4.jpg"
																			alt="" /></a>
																	<div class="caption">
																		<h5>Product name</h5>
																		<h4>
																			<a class="btn"
																				href="product_details.html">VIEW</a>
																			<span class="pull-right">$222.00</span>
																		</h4>
																	</div>
																</div>
															</li>
															<li class="span3">
																<div class="thumbnail">
																	<a href="product_details.html"><img
																			src="template/web/themes/images/products/5.jpg"
																			alt="" /></a>
																	<div class="caption">
																		<h5>Product name</h5>
																		<h4>
																			<a class="btn"
																				href="product_details.html">VIEW</a>
																			<span class="pull-right">$222.00</span>
																		</h4>
																	</div>
																</div>
															</li>
														</ul>
													</div>
												</div>
												<a class="left carousel-control" href="#featured"
													data-slide="prev">‹</a>
												<a class="right carousel-control" href="#featured"
													data-slide="next">›</a>
											</div>
										</div>
									</div>
									<h4>Latest Products</h4>
									<ul class="thumbnails">
										<li class="span3">
											<div class="thumbnail">
												<a href="product_details.html"><img
														src="template/web/themes/images/products/6.jpg" alt="" /></a>
												<div class="caption">
													<h5>Product name</h5>
													<p>Lorem Ipsum is simply dummy text.</p>

													<h4 style="text-align: center">
														<a class="btn" href="product_details.html">
															<i class="icon-zoom-in"></i></a>
														<a class="btn" href="#">Add to <i
																class="icon-shopping-cart"></i></a>
														<a class="btn btn-primary" href="#">$222.00</a>
													</h4>
												</div>
											</div>
										</li>
										<li class="span3">
											<div class="thumbnail">
												<a href="product_details.html"><img
														src="template/web/themes/images/products/7.jpg" alt="" /></a>
												<div class="caption">
													<h5>Product name</h5>
													<p>Lorem Ipsum is simply dummy text.</p>
													<h4 style="text-align: center">
														<a class="btn" href="product_details.html">
															<i class="icon-zoom-in"></i></a>
														<a class="btn" href="#">Add to <i
																class="icon-shopping-cart"></i></a>
														<a class="btn btn-primary" href="#">$222.00</a>
													</h4>
												</div>
											</div>
										</li>
										<li class="span3">
											<div class="thumbnail">
												<a href="product_details.html"><img
														src="template/web/themes/images/products/8.jpg" alt="" /></a>
												<div class="caption">
													<h5>Product name</h5>
													<p>Lorem Ipsum is simply dummy text.</p>
													<h4 style="text-align: center">
														<a class="btn" href="product_details.html">
															<i class="icon-zoom-in"></i></a>
														<a class="btn" href="#">Add to <i
																class="icon-shopping-cart"></i></a>
														<a class="btn btn-primary" href="#">$222.00</a>
													</h4>
												</div>
											</div>
										</li>
										<li class="span3">
											<div class="thumbnail">
												<a href="product_details.html"><img
														src="template/web/themes/images/products/9.jpg" alt="" /></a>
												<div class="caption">
													<h5>Product name</h5>
													<p>Lorem Ipsum is simply dummy text.</p>
													<h4 style="text-align: center">
														<a class="btn" href="product_details.html">
															<i class="icon-zoom-in"></i></a>
														<a class="btn" href="#">Add to <i
																class="icon-shopping-cart"></i></a>
														<a class="btn btn-primary" href="#">$222.00</a>
													</h4>
												</div>
											</div>
										</li>
										<li class="span3">
											<div class="thumbnail">
												<a href="product_details.html"><img
														src="template/web/themes/images/products/10.jpg" alt="" /></a>
												<div class="caption">
													<h5>Product name</h5>
													<p>Lorem Ipsum is simply dummy text.</p>
													<h4 style="text-align: center">
														<a class="btn" href="product_details.html">
															<i class="icon-zoom-in"></i></a>
														<a class="btn" href="#">Add to <i
																class="icon-shopping-cart"></i></a>
														<a class="btn btn-primary" href="#">$222.00</a>
													</h4>
												</div>
											</div>
										</li>
										<li class="span3">
											<div class="thumbnail">
												<a href="product_details.html"><img
														src="template/web/themes/images/products/11.jpg" alt="" /></a>
												<div class="caption">
													<h5>Product name</h5>
													<p>Lorem Ipsum is simply dummy text.</p>
													<h4 style="text-align: center">
														<a class="btn" href="product_details.html">
															<i class="icon-zoom-in"></i></a>
														<a class="btn" href="#">Add to <i
																class="icon-shopping-cart"></i></a>
														<a class="btn btn-primary" href="#">$222.00</a>
													</h4>
												</div>
											</div>
										</li>
									</ul>
								</div>
						</div>
					</div>
				</div>
				<!-- Footer ================================================================== -->
				<%@ include file="/common/web/footer.jsp" %>
					<!-- Placed at the end of the document so the pages load faster ============================================= -->
					<script src="template/web/themes/js/jquery.js" type="text/javascript"></script>
					<script src="template/web/themes/js/bootstrap.min.js" type="text/javascript"></script>
					<script src="template/web/themes/js/google-code-prettify/prettify.js"></script>

					<script src="template/web/themes/js/bootshop.js"></script>
					<script src="template/web/themes/js/jquery.lightbox-0.5.js"></script>


		</body>

		</html>