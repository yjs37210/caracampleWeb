package kr.caracampleWeb.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ManagerDAO {

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

	public int managerInsert(ManagerVO vo) {
		int cnt = -1;
		getConnect();
		String SQL = "insert into managers(managerID, managerPW, managerName, managerEmail) values (?,?,?,?) ";
		try {
			ps = conn.prepareStatement(SQL);
			ps.setString(1, vo.getManagerID());
			ps.setString(2, vo.getManagerPW());
			ps.setString(3, vo.getManagerName());
			ps.setString(4, vo.getManagerEmail());
			cnt = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}

	public boolean managerSelect(String managerID, String managerPW) {
		getConnect();
		boolean check = false;
		String sql = "select * from managers where managerID = ? and managerPW = ?";
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, managerID);
			ps.setString(2, managerPW);
			rs = ps.executeQuery();
			if (rs.next()) {
				check = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return check;
	}
	
	public int[] month_view() {
		getConnect();
		int[] totals = new int[12];
		String sql = "select * from month_view";
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			
			for(int i=0; i<12; i++) {
				if(rs.next()) {
					int mon = rs.getInt("month");
					int total = rs.getInt("total");
					totals[mon-1] = total;
				}
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		
		
		return totals;
	}
	
	
	
}
