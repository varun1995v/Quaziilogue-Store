<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>

<head>
  <title>AboutUs</title>
  <link rel="stylesheet" href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
  <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/overall.css"/>">
  <link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon1.png"/>" />
  <script src="<c:url value="/resource/js/jquery.js"/>"></script>
  <script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
</head>

<body>
<jsp:include page="commonheader.jsp" />
	<div class="row" style="margin-top:4px; margin-right:0px; margin-left:0px;margin-bottom:19px ">
		
		<div class="col-sm-4" style="margin-top:0px">
			<div class="container-fluid text-center">
				<h3>About Us</h3>
				<img src="<c:url value="/resource/images/aboutImage.png"/>" alt="AboutUs" width="350" height="350">
				<h3>Welcome to Quaziilogue Store - a portal to buy Quaziian works</h3>
			</div>
		</div>

		<div class="container-fluid text-center">
			<h3>What we do?</h3>
			<div id="para"><p>Each work in this website has been crafted with quality and emotions by
			                  me, Varun V. These works come in many formats like books, games, music
			                  and drawings. Each work has come from the deepest chambers of my heart.</p>
			</div>
			<div id="para"><p>Feel free to browse through my works and purchase one or many works in case
			                  you are interested. The prices are negotiable if I'm contacted directly.</p>
			</div>
		</div>
	</div>
<jsp:include page="commonfooter.jsp" /> 
</body>

</html>