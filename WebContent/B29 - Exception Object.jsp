<%-- <%@ page errorPage="B29 - ShowError.jsp" %> --%>
<%@ page errorPage="B29 - JSTL Tags for Error Page.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Error Handling Example</title>
</head>
<body>
	<%
	   // Throw an exception to invoke the error page
	   int x = 1;
	   if (x == 1)
	   {
	      throw new RuntimeException("Error condition!!!");
	   }
	%>
</body>
</html>