<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Demo</title>
</head>
<body>
	<c:forEach var="counter" begin="1" end="10" step="1">
		<c:out value="-5" />
		</br>
		<%
			System.out.println("counter= " + pageContext.findAttribute("counter"));
		%>
	</c:forEach>
</body>
</html>