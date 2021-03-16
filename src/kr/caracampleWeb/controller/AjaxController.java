package kr.caracampleWeb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.caracampleWeb.model.reviewDAO;
import kr.caracampleWeb.model.reviewVO;

@WebServlet("/ajax.do")
public class AjaxController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int yy = Integer.parseInt(request.getParameter("yy"));
		int mm = Integer.parseInt(request.getParameter("mm"));
		int day = Integer.parseInt(request.getParameter("day"));
		System.out.println(request.getParameter("num"));
		int num = Integer.parseInt(request.getParameter("num"));
		String dDay = LocalDate.of(yy, mm, day).format(DateTimeFormatter.ISO_DATE);

		reviewDAO dao = new reviewDAO();
		Gson gson = new Gson();
		String jsonArr = "";
		if (num == 0) {
			// 카라반 별점 막대 그래프 코드 시작
			ArrayList<reviewVO> arr = dao.selectScore(dDay);
			int[] list = new int[9];

			for (int i = 0; i < 9; i++) {
				int score = 0;
				String car_name = "Caravan" + (char) (i + 65);
				if (arr.size() != 0) {
					for (int j = 0; j < arr.size(); j++) {
						if (car_name.equals(arr.get(j).getCar_name())) {
							score = arr.get(j).getScore();
						}
					}
				}
				list[i] = score;
			}

			// 카라반 별점 막대 그래프 코드 끝
			jsonArr = gson.toJson(list);
		} else {
			// 카라반 후기 테이블 코드 시작
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
			// 카라반 후기 테이블 코드 끝
			jsonArr = gson.toJson(review_arr);
		}

		response.setContentType("text/plain; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(jsonArr);

	}

}
