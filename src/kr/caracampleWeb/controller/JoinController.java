package kr.caracampleWeb.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.caracampleWeb.model.ManagerDAO;
import kr.caracampleWeb.model.ManagerVO;

@WebServlet("/join.do")
public class JoinController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String managerID = request.getParameter("managerID");
		String managerPW = request.getParameter("managerPW");
		String managerName = request.getParameter("managerName");
		String managerEmail = request.getParameter("managerEmail");
		
		ManagerVO vo = new ManagerVO(managerID, managerPW, managerName, managerEmail);
		ManagerDAO dao = new ManagerDAO();
		int cnt = dao.managerInsert(vo);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		if(cnt == 1) {
			out.println("<script>");
			out.println("alert('회원가입이 완료되었습니다.')");
			out.println("location.href = 'login.jsp'");
			out.println("</script>");
		}else {
			out.println("<script>");
			out.println("alert('이미 존재하는 아이디 입니다.')");
			out.println("history.back()");
			out.println("</script>");
		}
		
		
	}

}
