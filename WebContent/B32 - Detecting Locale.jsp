<%@ page import = "java.io.*,java.util.Locale" %>
<%@ page import = "javax.servlet.*,javax.servlet.http.* "%>
<%
   //Get the client's Locale
   Locale locale = request.getLocale();
   String language = locale.getLanguage();
   String country = locale.getCountry();
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
	<center>
		<h1>Detecting Locale</h1>
	</center>

	<p align="center">
		<% 
            out.println("Language : " + language  + "<br />");
            out.println("Country  : " + country   + "<br />");
         %>
	</p>
</body>
</html>