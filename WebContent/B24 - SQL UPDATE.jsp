<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Demo</title>
</head>
<body>
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/vietjack" user="tuan" password="1234" />

	<c:set var="empId" value="102" />

	<sql:update dataSource="${snapshot}" var="count">
         UPDATE employees SET last = 'Ali'
         <sql:param value="${empId}" />
	</sql:update>

	<sql:query dataSource="${snapshot}" var="result">
         SELECT * FROM vietjack.employees;
      </sql:query>

	<table border="1" width="100%">
		<tr>
			<th>Emp ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Age</th>
		</tr>

		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.first}" /></td>
				<td><c:out value="${row.last}" /></td>
				<td><c:out value="${row.age}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>