package kr.caracampleWeb.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class customerDAO {

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

	public customerVO customer_select(int num_arg) {
		getConnect();

		customerVO vo = null;

		String sql = "select * from customer where num=?";

		try {
			ps.getConnection().prepareStatement(sql);

			ps.setInt(1, num_arg);

			rs = ps.executeQuery();

			while (rs.next()) {

				int num = rs.getInt("num");
				String name = rs.getString("name");
				String tel = rs.getString("tel");
				String car_name = rs.getString("car_name");
				int male = rs.getInt("male");
				int female = rs.getInt("female");
				String check_in = rs.getString("check_in");
				String check_out = rs.getString("check_out");
				String able = rs.getString("able");

				vo = new customerVO(num, name, tel, car_name, male, female, check_in, check_out, able);

			}

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			dbClose();
		}

		return vo;
	}

	public customerVO customer_able(String car_name_arg) {
		getConnect();

		customerVO vo = null;

		String sql = "select * from customer where able = '1' and car_name = ?";

		try {
			ps = conn.prepareStatement(sql);

			ps.setString(1, car_name_arg);

			rs = ps.executeQuery();

			while (rs.next()) {

				/*
				 * private int num; private String name; private String tel; private String
				 * car_name; private int male; private int female; private String check_in;
				 * private String check_out; private String able;
				 */

				int num = rs.getInt("num");
				String name = rs.getString("name");
				String tel = rs.getString("tel");
				String car_name = rs.getString("car_name");
				int male = rs.getInt("male");
				int female = rs.getInt("female");
				String check_in = rs.getString("check_in");
				String check_out = rs.getString("check_out");
				String able = rs.getString("able");

				vo = new customerVO(num, name, tel, car_name, male, female, check_in, check_out, able);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}

		return vo;
	}

}
