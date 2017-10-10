<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Demo</title>
</head>
<body>
	<jsp:useBean id="students" class="vn.hkd.jsp.StudentsBean">
		<jsp:setProperty name="students" property="firstName" value="Zara" />
		<jsp:setProperty name="students" property="lastName" value="Ali" />
		<jsp:setProperty name="students" property="age" value="10" />
	</jsp:useBean>

	<p>
		Student First Name:
		<jsp:getProperty name="students" property="firstName" />
	</p>
	<p>
		Student Last Name:
		<jsp:getProperty name="students" property="lastName" />
	</p>
	<p>
		Student Age:
		<jsp:getProperty name="students" property="age" />
	</p>
</body>
</html>