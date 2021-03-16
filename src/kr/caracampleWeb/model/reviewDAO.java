package kr.caracampleWeb.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class reviewDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	private void getConnect() {
		String URL = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
		String user = "hr";
		String password = "hr";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(URL, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void dbClose() {
		try {
			if (rs != null)
				rs.close();
			if (ps != null)
				ps.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String now() {
		getConnect();
		String dDay = "";
		String SQL = "select to_char(sysdate, 'yyyy-MM-dd') as dDay from dual";
		try {
		ps = conn.prepareStatement(SQL);
		rs = ps.executeQuery();
		if (rs.next()) {
			dDay = rs.getString("dDay");
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		dbClose();
	}
	return dDay;
	}
	
	public ArrayList<reviewVO> selectScore(String dDay) {
		getConnect();
		ArrayList<reviewVO> arr = new ArrayList<reviewVO>();
		String SQL = "select c.car_name, r.score from review r, customer c where r.num = c.num and to_char(r.time,'yyyy-MM-dd') = ?";
		try {
		ps = conn.prepareStatement(SQL);
		ps.setString(1, dDay);
		rs = ps.executeQuery();
		while (rs.next()) {
			String car_name = rs.getString("car_name");
			int score = rs.getInt("score");
			reviewVO vo = new reviewVO();
			vo.setCar_name(car_name);
			vo.setScore(score);
			arr.add(vo);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		dbClose();
	}
		return arr;
	}

	public ArrayList<reviewVO> selectAvgScore() {
		getConnect();
		ArrayList<reviewVO> arr = new ArrayList<reviewVO>();
		String SQL = "select avg(r.score) as avg, c.car_name from review r, customer c " + 
				"where r.num = c.num group by c.car_name";
		try {
		ps = conn.prepareStatement(SQL);
		rs = ps.executeQuery();
		while (rs.next()) {
			int score = rs.getInt("avg");
			String car_name = rs.getString("car_name");
			reviewVO vo = new reviewVO();
			vo.setScore(score);
			vo.setCar_name(car_name);
			arr.add(vo);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		dbClose();
	}
		return arr;
	}

	public ArrayList<reviewVO> selectReview(String dDay) {
		getConnect();
		ArrayList<reviewVO> arr = new ArrayList<reviewVO>();
		String SQL = "select c.num, c.car_name, r.score, r.cmt_review " + 
				"from review r, customer c where r.num = c.num and to_char(r.time,'yyyy-MM-dd') = ?"
				+ " order by c.car_name";
		try {
		ps = conn.prepareStatement(SQL);
		ps.setString(1, dDay);
		rs = ps.executeQuery();
		while (rs.next()) {
			int num = rs.getInt("num");
			String car_name = rs.getString("car_name");
			int score = rs.getInt("score");
			String cmt_review = rs.getString("cmt_review");
			reviewVO vo = new reviewVO();
			vo.setNum(num);
			vo.setCar_name(car_name);
			vo.setScore(score);
			vo.setCmt_review(cmt_review);
			arr.add(vo);
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		dbClose();
	}
		return arr;
	}
	
	

}
