package com.fdmgroup.servlet;

import java.io.IOException;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/show")
public class ShowServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		Cookie cookie = new Cookie("bgcolor", "red");
		cookie.setMaxAge(300);
		response.addCookie(cookie);
		
		List<String> countries = new ArrayList<>();
		countries.add("Canada");
		countries.add("United Kingdom");
		countries.add("Spain");
		countries.add("India");
		countries.add("China");
		
		LocalDate now = LocalDate.now();
		DayOfWeek dow = now.getDayOfWeek();
		request.setAttribute("dow", dow.getValue());
		request.setAttribute("countries", countries);
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/show.jsp");
		rd.forward(request, response);
	}

}
