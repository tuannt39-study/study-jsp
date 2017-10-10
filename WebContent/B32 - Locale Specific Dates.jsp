<%@ page import = "java.io.*,java.util.Locale" %>
<%@ page import = "javax.servlet.*,javax.servlet.http.* "%>
<%@ page import = "java.text.DateFormat,java.util.Date" %>

<%
   String title = "Locale Specific Dates";
   
   //Get the client's Locale
   Locale locale = request.getLocale( );
   
   String date = DateFormat.getDateTimeInstance(
      DateFormat.FULL, 
      DateFormat.SHORT, 
      locale).format(new Date( ));
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
		<h1>
			<%
				out.print(title);
			%>
		</h1>
	</center>

	<div align="center">
		<p>
			Local Date:
			<%
			out.print(date);
		%>
		</p>
	</div>
</body>
</html>