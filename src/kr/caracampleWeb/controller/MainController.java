package kr.caracampleWeb.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.caracampleWeb.model.ManagerDAO;
import kr.caracampleWeb.model.reviewDAO;
import kr.caracampleWeb.model.reviewVO;

@WebServlet("/main.do")
public class MainController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		reviewDAO dao = new reviewDAO();
		String dDay = dao.now();
		ArrayList<reviewVO> arr = dao.selectScore(dDay);
		ArrayList<reviewVO> avg_arr = dao.selectAvgScore();
		System.out.println(avg_arr.get(0).getScore());
		int[] list = new int[9];
		int[] avg_list = new int[9];

		for (int i = 0; i < 9; i++) {
			int score = 0;
			int avg_score = 0;
			String car_name = "Caravan" + (char) (i + 65);
			if (arr.size() != 0) {
				for (int j = 0; j < arr.size(); j++) {
					if (car_name.equals(arr.get(j).getCar_name())) {
						score = arr.get(j).getScore();
					}
				}
			}
			if (avg_arr.size() != 0) {
				for (int j = 0; j < avg_arr.size(); j++) {
					if (car_name.equals(avg_arr.get(j).getCar_name())) {
						avg_score = avg_arr.get(j).getScore();
						System.out.println(avg_score);
					}
				}
			}
			list[i] = score;
			avg_list[i] = avg_score;
		}

		request.setAttribute("list", list);
		request.setAttribute("avg_list", avg_list);

		ArrayList<reviewVO> review_arr = dao.selectReview(dDay);
		if (review_arr.size() == 0) {
			reviewVO vo = new reviewVO();
			vo.setNum(0);
			vo.setCar_name("-");
			vo.setScore(0);
			vo.setCmt_review("-");
			review_arr.add(vo);
		}
		for(int i = 0; i < review_arr.size(); i++) {
			if(review_arr.get(i).getCmt_review()==null) {
				review_arr.get(i).setCmt_review("-");
			}
		}
		request.setAttribute("review_arr", review_arr);

		ManagerDAO m_dao = new ManagerDAO();
		int[] month_total = m_dao.month_view();

		request.setAttribute("month_total", month_total);

		RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
		rd.forward(request, response);

	}

}
