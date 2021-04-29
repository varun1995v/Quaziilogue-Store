<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>

<head>
  <title>My Shopping Cart</title>
  <link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon1.png"/>" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script src="<c:url value="/resource/js/productController.js"/>"></script>
</head>

<body ng-app="myapp">
<%@ include file="commonheader.jsp"%>
	<div class="container" style="width: 1145px; margin-top: 20px; margin-bottom: 180px;">
		<div style="margin-bottom: 30px">
			<div ng-init="getCart(${cartId})">
				<br> List of Books Added
				<div>
					<a class="btn btn-danger pull-left" href="/qcommerce/cart/removeAllItems/${cartId}"
						style="margin-top: 15px; margin-left: 20px"> <span
						class="glyphicon glyphicon-remove-sign"> </span>Clear Cart
					</a>
				</div>
				<div>
					<c:url value="/order/${cartId}" var="url1"></c:url>
					<a href="${url1}" class="btn btn-danger pull-left"
						style="margin-top: 15px; margin-left: 20px"> <span
						class="glyphicon glyphicon-shipping-cart"> </span>Check Out
					</a>
				</div>
				<table class="table table-hover" id="cartItemList">
					<thead>
						<tr>
							<th>Item</th>
							<th>Quantity</th>
							<th>Rate</th>
							<th>Amount</th>
						</tr>
					</thead>
					<tbody>
					  <c:forEach items="${carts.cartItem}" var="cart">
						<tr>
							<td>{{cart.product.productName}}</td>
							<td>{{cart.quality}}</td>
							<td>{{cart.product.productPrice}}</td>
							<td>{{cart.price}}</td>
							<td><a class="btn btn-danger" href="/removeCartItem/${cart.cartItemId}" style="margin-top: 0px;">
								<span class="glyphicon glyphicon-trash"></span>remove</a>
							</td>
						  </tr>
					  </c:forEach>
					</tbody>
				</table>
				Total Amount: {{calculateGrandTotal()}}
			</div>
			<c:url value="/getAllProducts" var="url"></c:url>
			<a href="${url}" class="btn btn-default" style="margin-left: 20px">Continue	Shopping</a>
		</div>
	</div>
	
	<%@ include file="commonfooter.jsp" %>
</body>
</html>