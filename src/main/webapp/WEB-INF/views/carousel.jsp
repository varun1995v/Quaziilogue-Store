<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
  <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/overall.css"/>">
  <script src="<c:url value="/resource/js/jquery.js"/>"></script>
  <script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
</head>

<body>
	<div class="jumbotron">
		<div class="container">
			<br>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">

				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>
				</ol>

				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="<c:url value="/resource/images/cover1.jpg"/>" alt="Image1">
					</div>

					<div class="item">
						<img src="<c:url value="/resource/images/cover2.jpg"/>" alt="Image2">
					</div>

					<div class="item">
						<img src="<c:url value="/resource/images/cover3.jpg"/>" alt="Image3">
					</div>

					<div class="item">
						<img src="<c:url value="/resource/images/cover4.jpg"/>" alt="Image4">
					</div>

					<div class="item">
						<img src="<c:url value="/resource/images/cover5.jpg"/>" alt="Image5">
					</div>
				</div>

				<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> 
				  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Prev</span>
				</a> 
				<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> 
				  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				</a>
				
			</div>
		</div>
	</div>
</body>
</html>