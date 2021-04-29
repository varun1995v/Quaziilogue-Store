<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>

<%@ include file="/WEB-INF/views/commonheader.jsp"%>
<div class="container-wrapper">
	<div class="container" style="margin-bottom: 180px;">
		<section>
			<div class="jumbotron">
				<div class="container" >
					<h1 class="alert alert-danger">Checkout cancelled!</h1>
					<p>Your checkout process is cancelled! You may continue
						shopping.</p>
				</div>
			</div>
		</section>

		<section class="container">
			<p>
				<center><a href="<c:url value="/getAllProducts" />" class="btn btn-default">Go to Products page</a></center>
			</p>
		</section>
	</div>
</div>
<%@ include file="/WEB-INF/views/commonfooter.jsp"%>