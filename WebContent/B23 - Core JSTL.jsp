<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nhóm Core Tags trong JSTL</title>
</head>
<body>
	<p style="font-weight: bold;color:red">c:out</p>
		<c:out value = "${'<tag>, xin chào , &'}"/>
	
	<p style="font-weight: bold;color:red">c:set</p>
		<c:set var = "salary" scope = "session" value = "${2000*1}"/>
    	<c:out value = "${salary}"/>
    
    <p style="font-weight: bold;color:red">c:remove</p>
    	<c:set var = "salary" scope = "session" value = "${2000*2}"/>
   		<p>Before Remove Value: <c:out value = "${salary}"/></p>
    	<c:remove var = "salary"/>
   	 	<p>After Remove Value: <c:out value = "${salary}"/></p>

	<p style="font-weight: bold;color:red">c:catch</p>
		<c:catch var ="catchException">
			<% int x = 5/0;%>
		</c:catch>
		<c:if test = "${catchException != null}">
			<p>The exception is : ${catchException} <br />
			There is an exception: ${catchException.message}</p>
		</c:if>
	
	<p style="font-weight: bold;color:red">c:if</p>
		<c:set var = "salary" scope = "session" value = "${2000*3}"/>
		<c:if test = "${salary > 2000}">
			<p>My salary is:  <c:out value = "${salary}"/><p>
		</c:if>

	<p style="font-weight: bold;color:red">c:choose, c:when, c:otherwise</p>
		<c:set var = "salary" scope = "session" value = "${2000*4}"/>
		<p>Your salary is : <c:out value = "${salary}"/></p>
		<c:choose>
			<c:when test = "${salary <= 0}">
				Salary is very low to survive.
			</c:when>
			
			<c:when test = "${salary > 5000}">
				Salary is very good.
			</c:when>
			
			<c:otherwise>
				No comment sir...
			</c:otherwise>
		</c:choose>

	<p style="font-weight: bold;color:red">c:import</p>
		<%-- <c:import var = "data" url = "https://www.google.com.vn"/>
		<c:out value = "${data}"/> --%>

	<p style="font-weight: bold;color:red">c:forEach, c:forTokens</p>
		<c:forEach var="i" begin="1" end="5">
		   	Item <c:out value="${i}"/><p>
		</c:forEach>
		<c:forTokens items = "Zara, Nuha, Roshy" delims = "," var = "name">
         	<c:out value = "${name}"/><p>
      	</c:forTokens>

	<p style="font-weight: bold;color:red">c:param</p>
		<%-- <c:url value = "https://www.google.com.vn" var = "myURL">
		   	<c:param name = "trackingId" value = "1234"/>
		   	<c:param name = "reportType" value = "summary"/>
		</c:url>
		<c:import url = "${myURL}"/> --%>

	<p style="font-weight: bold;color:red">c:redirect</p>
		<%-- <c:redirect url = "https://www.google.com.vn"/> --%>
	
	<p style="font-weight: bold;color:red">c:url</p>
		<a href = "<c:url value = "https://www.google.com.vn"/>">TEST</a>
	

</body>
</html>