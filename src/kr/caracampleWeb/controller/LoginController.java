package kr.caracampleWeb.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.caracampleWeb.model.ManagerDAO;

@WebServlet("/login.do")
public class LoginController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String managerID = request.getParameter("managerID");
		String managerPW = request.getParameter("managerPW");
		
		ManagerDAO dao = new ManagerDAO();
		boolean check = dao.managerSelect(managerID,managerPW);
		if(check) {
			response.sendRedirect("main.jsp");
		}else {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('아이디와 비밀번호가 일치하지 않습니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
	
	}

}
