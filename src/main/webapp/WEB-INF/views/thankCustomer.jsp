<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>

<html>
<body>
<jsp:include page="commonheader.jsp" />

<div class="container-wrapper">
	<div class="container">
		<section>
			<div class="jumbotron">
				<div class="container">
					<h1>Thank you for your business!</h1>
					<p>Your order will be shipped in three business days!</p>
				</div>
			</div>
		</section>

		<section class="container">
			<p>
				<a href="<spring:url value="/" />" class="btn btn-default">Okay</a>
			</p>
		</section>
		
	</div>
</div>

<jsp:include page="productGrid.jsp" />
<jsp:include page="commonfooter.jsp" />

</body>
</html>
