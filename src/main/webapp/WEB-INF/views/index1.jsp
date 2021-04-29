<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>

<head>
  <title>Quaziilog Store</title>
  <link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon1.png"/>" />
</head>

<body>
 <jsp:include page="commonheader.jsp" /> 
 <jsp:include page="carousel.jsp" />
 <jsp:include page="productGrid.jsp" /> 
 <jsp:include page="commonfooter.jsp" /> 
</body>

</html>