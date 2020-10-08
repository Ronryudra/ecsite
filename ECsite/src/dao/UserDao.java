package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.UserBean;






public class UserDao {









	//	 1, !!! it is compulsory to remember interdependence between DAO and BEAN!!

	public UserBean login(String cd, String pw) {

		String url = "jdbc:mysql://localhost/art";
		String id = "root";
		String pass = "password";
		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;





//         2, !!!!! for puting information into Bean
		        UserBean u = new UserBean();





				try {
			Class.forName("com.mysql.jdbc.Driver");

		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		}

		try {

			conn = DriverManager.getConnection(url, id, pass);

			String query = "select * from user where login_cd=? And login_pw=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, cd);
			pstmt.setString(2, pw);

			rs = pstmt.executeQuery();
//




//			3, !!!!!!! About to insert database information into BEAN!!!!!!

			if (rs.next()) {
				u.setLoginid(rs.getString("user_id"));
				u.setLogincode(rs.getString("login_cd"));
				u.setLoginpassword(rs.getString("login_pw"));

			}




		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();

			} catch (Exception ex) {
			}

		}

		return u;

	}

}
