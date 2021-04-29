<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>

<head>
  <title>Add Product</title>
  <link rel="stylesheet" href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
  <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/register.css"/>">
  <link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon1.png"/>" />
  <script src="<c:url value="/resource/js/jquery.js"/>"></script>
  <script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
</head>

<body>
<jsp:include page="commonheader.jsp" />

	<div class="container" style="margin-bottom:19px">
		<h1 class="col-lg-10 well">Add a new Product</h1>
		<div class="col-lg-12 well">
			<div class="row">
				<c:url value="/admin/product/addProduct" var="url"></c:url>

				<form:form method="post" action="${url}" commandName="productFormObj" enctype="multipart/form-data">
					<div class="col-sm-10">

						<div class="row">
							<div class="col-sm-8 form-group">
								<form:label path="productName">Product Name</form:label>
								 <form:input type="text"
									placeholder="Enter Name:" class="form-control"
									path="productName"></form:input>
								 <form:errors path="productName"></form:errors>
							</div>
						</div>

						<div class="form-group">
						<form:label path="productDescription">Product Info</form:label>
								 <form:textarea type="text"
									placeholder="Enter Info:" class="form-control"
									path="productDescription"></form:textarea>
						</div>
						
						<div class="form-group">
						   <form:label path="productCategory">Product Genre</form:label>
								 <form:radiobutton path="productCategory" value="Book"/>Book
								 <form:radiobutton path="productCategory" value="Poem"/>Poem
								 <form:radiobutton path="productCategory" value="Game"/>Game
								 <form:radiobutton path="productCategory" value="Music"/>Music
								 <form:radiobutton path="productCategory" value="Art"/>Art
								 <form:radiobutton path="productCategory" value="Other"/>Other
						</div>

						<div class="row">
							<div class="col-sm-4 form-group">
								<form:label path="productRating">Product Rating</form:label>
								 <form:input type="text"
									placeholder="Enter Rating:" class="form-control"
									path="productRating"></form:input>
							</div>
							<div class="col-sm-4 form-group">
								<form:label path="productManufacturer">Product Maker</form:label>
								 <form:input type="text"
									placeholder="Enter Maker:" class="form-control"
									path="productManufacturer"></form:input>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-4 form-group">
								<form:label path="unitStock">Stock</form:label>
								 <form:input type="text"
									placeholder="Enter Stock:" class="form-control"
									path="unitStock"></form:input>
							</div>
							<div class="col-sm-4 form-group">
								<form:label path="productPrice">Product Price</form:label>
								 <form:input type="text"
									placeholder="Enter Price:" class="form-control"
									path="productPrice"></form:input>
								 <form:errors path="productPrice"></form:errors>
							</div>
						</div>

					 	<div class="form-group">
						<form:label path="productImage">Product Logo</form:label>
							<form:input type="file" path="productImage"/>
						</div>  

						<div class="form-actions">
							<button type="submit" class="btn btn-lg btn-info">Submit</button>
						</div>

					</div>
				</form:form>
			
			</div>
		</div>
	</div>
	
<jsp:include page="commonfooter.jsp" />

</body>

</html>