<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>

<head>
  <title>Product Management</title>
  <script src="<c:url value="/resource/js/jquery.js"/>"></script>
  <script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
  <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/productList.css"/>">
  <link rel="stylesheet" href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
</head>

<body>
<jsp:include page="commonheader.jsp" />

	<div class="container" id="productTable" style="width:1145px;margin-bottom: 180px;">
		<h2>User Management</h2>
		<p>Following are the current users in the website:</p>
		
		<table class="table table-hover" id="productList">
			<thead>
				<tr>
					<th>User Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Phone Number</th>
					<th>Email Id</th>
					<th>Password</th>
					<th>Active</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<td>${user.userId}</td>
						<td>${user.customer.firstName}</td>
						<td>${user.customer.lastName}</td>
						<td>${user.customer.customerPhone}</td>
						<td>${user.emailId}</td>
						<td>${user.password}</td>
						<td>${user.enabled}</td>
						
						<td>
						    <a href="user/delete/${user.userId}"> 
						    <span class="glyphicon glyphicon-trash"></span></a>
						</td>  
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
	</div>
<%@ include file="commonfooter.jsp"%>

</body>

</html>
