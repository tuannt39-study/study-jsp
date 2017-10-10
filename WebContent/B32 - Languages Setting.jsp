<%@ page import = "java.io.*,java.util.Locale" %>
<%@ page import = "javax.servlet.*,javax.servlet.http.* "%>

<%
   // Set response content type
   response.setContentType("text/html");
   
   // Set spanish language code.
   response.setHeader("Content-Language", "es");
   String title = "En Español";
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Demo</title>
</head>
<body>
	<!-- "&#241;" biểu diễn "ñ", và "&#161;" biểu diễn "¡" -->
	<center>
		<h1>
			<%  out.print(title); %>
		</h1>
	</center>

	<div align="center">
		<p>En Español</p>
		<p>¡Hola Mundo!</p>
	</div>
</body>
</html>