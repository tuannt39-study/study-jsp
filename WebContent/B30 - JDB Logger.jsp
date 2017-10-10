<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.logging.Logger" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Demo</title>
</head>
<body>
	<%
		Logger logger = Logger.getLogger(this.getClass().getName());
	%>

	<c:forEach var="counter" begin="1" end="10" step="1">
		<c:set var="myCount" value="-5" />
		<c:out value="" />
		</br>
		<%
			String message = "counter=" + pageContext.findAttribute("counter") + " myCount="
						+ pageContext.findAttribute("myCount");
				logger.info(message);
		%>
	</c:forEach>
</body>
</html>