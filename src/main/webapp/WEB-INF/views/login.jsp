<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>

<head>
  <title>Login</title>
  <link rel="stylesheet" type="text/css" href="css/header.css">
  <link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon1.png"/>" />
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <script src="js/jquery-3.1.0.min.js"></script>
  <script src="bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
<jsp:include page="commonheader.jsp" />
	<div class="container" style="margin-top: 30px; margin-bottom: 180px;">
		<div class="col-md-4">
			<div class="login-panel panel panel-default">
			
				<div class="panel-heading">
					<h3 class="panel-title" align="center">Sign In</h3>
				</div>
				
				<div class="panel-body">

					<c:if test="${!empty querySuccess}">
						<div class="error" style="color: #ff0000;">${querySuccess}</div>
					</c:if>

					<c:if test="${not empty registrationSuccess}">
						<div class="error" style="color: #ff0000;">${registrationSuccess}</div>
					</c:if>
					<c:if test="${not empty logout}">
						<div class="error" style="color: #ff0000;">${logout}</div>
					</c:if>

					<form name="loginForm" action="<c:url value="/j_spring_security_check"/>" method="post">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="Enter Email" name="j_username" type="email">
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Enter Password" name="j_password" type="password">
							</div>
							<div class="checkbox">
								<c:if test="${not empty error}">
									<div class="error" style="color: #ff0000">${error}</div>
								</c:if>
							</div>

							<div id="button">
								<button type="submit" class="btn btn-sm btn-success">Login</button>
							</div>

						</fieldset>
					</form>
					
				</div>
				
			</div>
		</div>
	</div>
<jsp:include page="commonfooter.jsp" />
</body>

</html>