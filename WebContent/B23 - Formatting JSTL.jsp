<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nhóm Formatting Tags trong JSTL</title>
</head>
<body>

	<p style="font-weight: bold;color:red">fmt:formatNumber</p>
		<c:set var = "balance" value = "120000.2309" />
		<c:out value="${balance}"></c:out>
      	<p>Formatted Number (1): <fmt:formatNumber value = "${balance}" type = "currency"/></p>
      	<p>Formatted Number (2): <fmt:formatNumber type = "number" maxIntegerDigits = "3" value = "${balance}" /></p>
      	<p>Formatted Number (3): <fmt:formatNumber type = "number" maxFractionDigits = "3" value = "${balance}" /></p>
      	<p>Formatted Number (4): <fmt:formatNumber type = "number" groupingUsed = "false" value = "${balance}" /></p>
      	<p>Formatted Number (5): <fmt:formatNumber type = "percent" maxIntegerDigits="3" value = "${balance}" /></p>
      	<p>Formatted Number (6): <fmt:formatNumber type = "percent" minFractionDigits = "10" value = "${balance}" /></p>
      	<p>Formatted Number (7): <fmt:formatNumber type = "percent" maxIntegerDigits = "3" value = "${balance}" /></p>
      	<p>Formatted Number (8): <fmt:formatNumber type = "number" pattern = "###.###E0" value = "${balance}" /></p>
      	<p>Currency in USA : <fmt:setLocale value = "en_US"/> <fmt:formatNumber value = "${balance}" type = "currency"/></p>
	      
	<p style="font-weight: bold;color:red">fmt:parseNumber</p>
		<c:set var = "balance" value = "1250003.350" />
		<c:out value="${balance}"></c:out>
      	<fmt:parseNumber var = "i" type = "number" value = "${balance}" />
      	<p>Parsed Number (1) : <c:out value = "${i}" /></p>
      	<fmt:parseNumber var = "i" integerOnly = "true" type = "number" value = "${balance}" />
      	<p>Parsed Number (2) : <c:out value = "${i}" /></p>
      
	<p style="font-weight: bold;color:red">fmt:formatDate</p>
		<c:set var = "now" value = "<%= new java.util.Date()%>" />
		<c:out value="${now}"></c:out>
      	<p>Formatted Date (1): <fmt:formatDate type = "time" value = "${now}" /></p>
      	<p>Formatted Date (2): <fmt:formatDate type = "date" value = "${now}" /></p>
      	<p>Formatted Date (3): <fmt:formatDate type = "both" value = "${now}" /></p>
      	<p>Formatted Date (4): <fmt:formatDate type = "both" dateStyle = "short" timeStyle = "short" value = "${now}" /></p>
      	<p>Formatted Date (5): <fmt:formatDate type = "both" dateStyle = "medium" timeStyle = "medium" value = "${now}" /></p>
      	<p>Formatted Date (6): <fmt:formatDate type = "both" dateStyle = "long" timeStyle = "long" value = "${now}" /></p>
      	<p>Formatted Date (7): <fmt:formatDate pattern = "yyyy-MM-dd" value = "${now}" /></p>
        <p>Formatted Date (8): <fmt:formatDate pattern = "HH:mm:ss" type = "time" value = "${now}" /></p>
         
	<p style="font-weight: bold;color:red">fmt:parseDate</p>
		<c:set var = "now1" value = "20-10-2017" />
		<c:out value="${now1}"></c:out>
      	<fmt:parseDate value = "${now1}" var = "parsedEmpDate" pattern = "dd-MM-yyyy" />
      	<p>Parsed Date: <c:out value = "${parsedEmpDate}" /></p>
         
	<p style="font-weight: bold;color:red">fmt:bundle</p>
		<fmt:bundle basename="jspvietjack.Example">
		   <fmt:message key="count.one"/><br/>
		   <fmt:message key="count.two"/><br/>
		   <fmt:message key="count.three"/><br/>
		</fmt:bundle>
		<fmt:bundle basename="jspvietjack.Example" prefix = "count.">
		   <fmt:message key="one"/><br/>
		   <fmt:message key="two"/><br/>
		   <fmt:message key="three"/><br/>
		</fmt:bundle>
         
	<p style="font-weight: bold;color:red">fmt:setLocale</p>
		<fmt:bundle basename="jspvietjack.Example">
		   <fmt:message key="count.one"/><br/>
		   <fmt:message key="count.two"/><br/>
		   <fmt:message key="count.three"/><br/>
		</fmt:bundle>
		<!-- Change the Locale -->
      	<fmt:setLocale value = "es_ES"/>
      	<fmt:bundle basename = "jspvietjack.Example">
         	<fmt:message key = "count.one"/><br/>
         	<fmt:message key = "count.two"/><br/>
         	<fmt:message key = "count.three"/><br/>
      	</fmt:bundle>
    
	<p style="font-weight: bold;color:red">fmt:setBundle</p>
		<fmt:setLocale value = "en"/>
      	<fmt:setBundle basename = "jspvietjack.Example" var = "lang"/>
      	<fmt:message key = "count.one" bundle = "${lang}"/><br/>
      	<fmt:message key = "count.two" bundle = "${lang}"/><br/>
      	<fmt:message key = "count.three" bundle = "${lang}"/><br/>

	<p style="font-weight: bold;color:red">fmt:timeZone</p>
		<%-- <c:set var = "now" value = "<%= new java.util.Date()%>" />
      	<table border = "1" width = "100%">
         	<tr>
            	<td width = "100%" colspan = "2" bgcolor = "#0000FF">
               	<p align = "center">
                  	<b>
                     	<font color = "#FFFFFF" size = "4">Formatting:
                        	<fmt:formatDate value = "${now}" type = "both" timeStyle = "long" dateStyle = "long" />
                     	</font>
                  	</b>
               	</p>
            	</td>
         	</tr>
         	<c:forEach var = "zone" items = "<%= java.util.TimeZone.getAvailableIDs()%>">
            	<tr>
               	<td width = "51%">
                  	<c:out value = "${zone}" />
               	</td>
               	<td width = "49%">
                  	<fmt:timeZone value = "${zone}">
                  		<fmt:formatDate value = "${now}" timeZone = "${zn}" type = "both" />
                  	</fmt:timeZone>
               	</td>
            	</tr>
         	</c:forEach>
      	</table> --%>
                  
	<p style="font-weight: bold;color:red">fmt:setTimeZone</p>
		<c:set var = "now" value = "<%=new java.util.Date()%>" />
      	<p>Date in Current Zone: <fmt:formatDate value = "${now}" type = "both" timeStyle = "long" dateStyle = "long" /></p>
      	<p>Change Time Zone to GMT-8</p>
      	<fmt:setTimeZone value = "GMT-8" />
      	<p>Date in Changed Zone: <fmt:formatDate value = "${now}" type = "both" timeStyle = "long" dateStyle = "long" /></p>
    
	<p style="font-weight: bold;color:red">fmt:message</p>
    	<fmt:setLocale value = "en"/>
      	<fmt:setBundle basename = "jspvietjack.Example" var = "lang"/>
      	<fmt:message key = "count.one" bundle = "${lang}"/><br/>
      	<fmt:message key = "count.two" bundle = "${lang}"/><br/>
      	<fmt:message key = "count.three" bundle = "${lang}"/><br/>
      
	<p style="font-weight: bold;color:red">fmt:requestEncoding</p>
		<fmt:requestEncoding value = "UTF-8" />
      	<fmt:setLocale value = "es_ES"/>
      	<fmt:setBundle basename = "jspvietjack.Example" var = "lang"/>
      	<fmt:message key = "count.one" bundle = "${lang}"/><br/>
      	<fmt:message key = "count.two" bundle = "${lang}"/><br/>
      	<fmt:message key = "count.three" bundle = "${lang}"/><br/>

</body>
</html>