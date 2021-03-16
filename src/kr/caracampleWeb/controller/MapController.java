package kr.caracampleWeb.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.caracampleWeb.model.*;

@WebServlet("/MapController.do")
public class MapController extends HttpServlet {
	
	protected void service(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String[] car_names = {"CaravanA","CaravanB","CaravanC","CaravanD"};
		String[] car_pages = {"caracample_map.jsp","caracample_map_B.jsp","caracample_map_C.jsp","caracample_map_D.jsp"};
		
		String car_name = request.getParameter("car_name");
		
		String nextPage=null;
		for(int i=0; i<car_names.length; i++) {
			if(car_name.equals(car_names[i])) {
				nextPage = car_pages[i];
				break;
			}
		}
		
		customerDAO dao = new customerDAO();
		
		customerVO vo = dao.customer_able(car_name);
		
		if(vo==null) {
			vo = new customerVO(0,"-","-","-",0,0,"-","-","-");
		}
		
		System.out.println(vo.toString());
		
		request.setAttribute("vo",vo);
		
		RequestDispatcher rd = request.getRequestDispatcher(nextPage);
		rd.forward(request, response);
		
	}

}
