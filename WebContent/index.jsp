<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Random" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Index</title>
	</head>
	<body>
		<h1>Hello From JSP!!!</h1>
		
		<a href="login">Login</a>
		<%!
			private boolean isPrime(int number){
			if (number == 0 || number == 1){
				return false;
			}
			
			if (number == 2)
				return true;
			
			int sqrt = (int) Math.round(Math.sqrt(number));
			
			for(int i=sqrt; i > 1; i--){
				if (number % i == 0)
					return false;
			}
			return true;
		}
		
		public List<Integer> printPrimeNumbers(int min, int max){
			ArrayList<Integer> list = new ArrayList<>();
			for(int i = min; i <= max; i++){
				if (isPrime(i)){
					list.add(i);
				}
			}
			return list;
		}
		%>
		
		<%
			Random r = new Random();
			String s = "";
			for (int i = 0; i < 10; i++){
				s += r.nextInt() + ", ";
			}
		%>
		<p>List of all random number: </p>
		<%= s %>
		<p>List of prime numbers between 20 and 70:</p>
		<%= printPrimeNumbers(20,70) %>
		
		<form action="calculator" method="post">
		Number 1:  <input type="text" name="n1"><br/>
		Number 2:  <input type="text" name="n2"><br/>
		<input type="submit" value="Submit">
		</form>
		
		<a href="show">Show Some Data from Servlet......</a>
		
	</body>
</html>