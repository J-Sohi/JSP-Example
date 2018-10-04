<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Caculator</title>
	</head>
	<body>
		<jsp:useBean id="cal" class="com.fdmgroup.model.Calculator"></jsp:useBean>
		<jsp:setProperty property="num1" name="cal" value="${param.n1 }"/>
		<jsp:setProperty property="num2" name="cal" value="${param.n2 }"/>
		
		The sum of <jsp:getProperty property="num1" name="cal"/> and 
		<jsp:getProperty property="num2" name="cal"/> is:
		<strong>${cal.add()}</strong><br/><br/>

		The sub of <jsp:getProperty property="num1" name="cal"/> and 
		<jsp:getProperty property="num2" name="cal"/> is:
		<strong>${cal.sub()}</strong><br/><br/>

		The mul of <jsp:getProperty property="num1" name="cal"/> and 
		<jsp:getProperty property="num2" name="cal"/> is:
		<strong>${cal.mul()}</strong><br/><br/>

		The div of <jsp:getProperty property="num1" name="cal"/> and 
		<jsp:getProperty property="num2" name="cal"/> is:
		<strong>${cal.div()}</strong><br/><br/>
	</body>
</html>