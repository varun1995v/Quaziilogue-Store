<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>

<head>
  <title>Registration Page</title>
  <link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon1.png"/>" />
  <link rel="stylesheet" href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
  <link rel="stylesheet" type="text/css" href="<c:url value="/resource/css/overall.css"/>">
  <script src="<c:url value="/resource/js/jquery.js"/>"></script>
  <script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
</head>

<body>
	<jsp:include page="commonheader.jsp" />
	<div class="container" style="margin-bottom: 19px">
		<h1 class="well">Enter your Registration Details</h1>
		<div class="col-lg-12 well">
			<div class="row">
				<c:url value="/customer/registration" var="url"></c:url>
				
				<form:form method="post" action="${url}" commandName="customer" enctype="multipart/form-data">
					<div class="col-sm-12">
						<div class="row">
							<div>
								<center class="group-title">User Details</center>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="firstName">First Name</form:label>
								<form:input type="text" placeholder="Enter First Name:" class="form-control" path="firstName"></form:input>
								<form:errors path="firstName"></form:errors>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="lastName">Last Name</form:label>
								<form:input type="text" placeholder="Enter Last Name:" class="form-control" path="lastName"></form:input>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="users.emailId">Email Id</form:label>
								<form:input type="text" placeholder="Enter Email ID:" class="form-control" path="users.emailId"></form:input>
								<form:errors path="users.emailId"></form:errors>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="customerPhone">Phone Number</form:label>
								<form:input type="text" placeholder="Enter Phone Number:" class="form-control" path="customerPhone"></form:input>
								<form:errors path="customerPhone"></form:errors>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="users.password">Password</form:label>
								<form:input type="password" placeholder="********" class="form-control" path="users.password" id="pass"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<label>Confirm Password</label> 
								<input type="password" placeholder="********" class="form-control" id="confirmpass" />
							</div>
						</div>
						
						<hr>
						<div>
							<center class="group-title">Shipping Address</center>
						</div>
						<div class="form-group">
							<form:label path="shippingAddress.address">Address</form:label>
							<form:textarea type="text" placeholder="Enter Shipping Address:" class="form-control" path="shippingAddress.address"></form:textarea>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="shippingAddress.city">City</form:label>
								<form:input type="text" placeholder="Enter Current City:" class="form-control" path="shippingAddress.city"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="shippingAddress.state">State/Province</form:label>
								<form:input type="text" placeholder="Enter your State/Province:"	class="form-control" path="shippingAddress.state"></form:input>
								<form:errors path="shippingAddress.state"></form:errors>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="shippingAddress.country">Country</form:label>
								<form:input type="text" placeholder="Enter your Country:" class="form-control" path="shippingAddress.country"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="shippingAddress.zipcode">PIN Code</form:label>
								<form:input type="text" placeholder="Enter PIN code:" class="form-control" path="shippingAddress.zipcode"></form:input>
								<form:errors path="shippingAddress.zipcode"></form:errors>
							</div>
						</div>
						<hr>
						<div>
							<center class="group-title">Billing Address</center>
						</div>
						<div class="form-group">
							<form:label path="billingAddress.address">Address</form:label>
							<form:textarea type="text" placeholder="Enter Billing Address:" class="form-control" path="billingAddress.address"></form:textarea>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="billingAddress.city">City</form:label>
								<form:input type="text" placeholder="Enter your City:" class="form-control" path="billingAddress.city"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="billingAddress.state">State/Province</form:label>
								<form:input type="text" placeholder="Enter your State/Province"	class="form-control" path="billingAddress.state"></form:input>
								<form:errors path="billingAddress.state"></form:errors>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="billingAddress.country">Country</form:label>
								<form:input type="text" placeholder="Enter your Country:" class="form-control" path="billingAddress.country"></form:input>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="billingAddress.zipcode">PIN Code</form:label>
								<form:input type="text" placeholder="Enter PIN Code.." class="form-control" path="billingAddress.zipcode"></form:input>
								<form:errors path="billingAddress.zipcode"></form:errors>
							</div>
						</div>
						<div class="form-actions">
							<button type="submit" class="btn btn-lg btn-info" onclick="return Validate()">Submit</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<jsp:include page="commonfooter.jsp" />

	<script type="text/javascript">
		function Validate() {
			var password = document.getElementById("pass").value;
			var confirmpass = document.getElementById("confirmpass").value;
			if (password != confirmpass) {
				alert("Password does Not Match.");
				return false;
			}
			return true;
		}
	</script>

</body>

</html>