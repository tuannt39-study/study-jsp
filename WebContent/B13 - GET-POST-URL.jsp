<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Demo</title>
</head>
<body>
	<!-- http://localhost:8080/JSPVietJack/B13%20-%20GET.jsp?first_name=Tuan&last_name=Nguyen -->
	<center>
	<h1>Using GET Method and POST Method to Read Form Data</h1>
	<ul>
		<li><p><b>First Name:</b>
		   <%= request.getParameter("first_name")%>
		</p></li>
		<li><p><b>Last  Name:</b>
		   <%= request.getParameter("last_name")%>
		</p></li>
	</ul>
	</center>
</body>
</html>