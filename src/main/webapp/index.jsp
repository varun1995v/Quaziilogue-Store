<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
  <title>Quaziilogue Store</title>
  <link rel="icon" type="image/x-icon" href="<c:url value="/resource/images/favicon1.png"/>" />
</head>

<body>
 <jsp:include page="WEB-INF/views/commonheader.jsp" /> 
 <jsp:include page="WEB-INF/views/carousel.jsp" />
 <jsp:include page="WEB-INF/views/productGrid.jsp" /> 
 <jsp:include page="WEB-INF/views/commonfooter.jsp" /> 
</body>

</html>