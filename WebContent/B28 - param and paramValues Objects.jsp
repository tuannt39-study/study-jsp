<%@ page isELIgnored ="false" %>
<%@ page import = "java.io.*,java.util.*" %>
<%String title = "Accessing Request Param";%>
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
       <h1><% out.print(title); %></h1>
    </center>
      
    <div align = "center">
       <p>${param["username"]}</p>
    </div>
</body>
</html>