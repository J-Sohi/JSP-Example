package com.fdmgroup.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fdmgroup.dao.UserDao;
import com.fdmgroup.model.User;

@WebServlet("/processLogin")
public class AuthenticationServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
    
    public AuthenticationServlet() {
        super();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		if (username.isEmpty() || password.isEmpty()){
			req.setAttribute("errorMsg", "Username/Password should not be empty.");
			RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
			rd.forward(req, resp);
		}
		UserDao userDao = new UserDao();
		User foundUser = (User) userDao.findByUsername(username);
		if (foundUser != null && foundUser.getPassword().equals(password)){
		//if (username.equals("jdoe") && password.equals("1234")){
			HttpSession session = req.getSession();
			session.setMaxInactiveInterval(300);
			session.setAttribute("user", foundUser);
			RequestDispatcher rd = req.getRequestDispatcher("WEB-INF/views/welcome.jsp");
			rd.forward(req, resp);
		}
		else{
			req.setAttribute("errorMsg", "Invalid username/password!");
			RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
			rd.forward(req, resp);
		}
		
	}

}
