<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Show Data</title>
	</head>
	<body>
		<c:choose>
			<c:when test="${not empty cookie.bgcolor.value }">
				<body bgcolor="${cookie.bgcolor.value }">
			</c:when>
			<c:otherwise>
				<body bgcolor="white">
			</c:otherwise>
		</c:choose>
		
		<h1>Show Current Day of the Week</h1>
		<p>Today is the ${requestScope.dow }
		<c:choose>
			<c:when test="${dow == 1 }">st</c:when>
			<c:when test="${dow == 2 }">nd</c:when>
			<c:when test="${dow == 3 }">rd</c:when>
			<c:otherwise>th</c:otherwise>
		</c:choose> day of the week.</p>
		
		<br/><br/>
		<ul>
			<c:forEach items="${countries }" var="country">
				<li>${country}</li>
			</c:forEach>
		</ul>
		
		<ol>
		<c:forTokens items="A,B,C,D,E,F" delims="," var="letter">
			<li>${letter }</li>
		</c:forTokens>
		</ol>
		
		<c:set var="var1" value="John Doe"></c:set>
		<h1>${var1}</h1>
		
	</body>
</html>