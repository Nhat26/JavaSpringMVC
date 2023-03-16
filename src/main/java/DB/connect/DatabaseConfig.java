package DB.connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConfig {

	
	//this is the connection
	public static Connection getConnection(){
		String jdbcUrl = "jdbc:mysql://localhost/quanlybanhang";
		String username = "root";
		String password = "";
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			System.out.println("Chua co driver");
			e.printStackTrace();
		}
		try {
			conn =  DriverManager.getConnection(jdbcUrl, username, password);
			return conn;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
}
