package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DB.connect.DatabaseConfig;
import model.Product;
import model.Users;

public class UserDAO{
	Connection conn = null;
	
	java.sql.PreparedStatement sttm = null;
	
	
	
	public List<Users> readUsers() {
		List<Users> list = new ArrayList<>();
		ResultSet rs = null;
		Statement sttm = null;
		try {
			String sql = "Select * from users";
			conn = DatabaseConfig.getConnection();
			sttm = conn.createStatement()	;
			rs = sttm.executeQuery(sql);
			while(rs.next()) {
				Users pd = new Users();
				pd.setId_user(rs.getLong(1));
				pd.setName(rs.getString(2));
				pd.setEmail(rs.getString(3));
				pd.setPassword(rs.getString(4));
				pd.setTypeuser(rs.getString(5));
				pd.setCreate_at(rs.getTimestamp(6));

				list.add(pd);
			}	
		
		} catch (Exception e) {	
			System.out.println("error: " +e.toString());
		}
		finally {
			try {
				rs.close();
				sttm.close();
				conn.close();
			}
			catch(Exception error){
				System.out.println("error: " +error.toString());
			}
		}
		return list;
	}
	public int addUser(Users user) {
		try {
		String sql = "INSERT INTO `users` (`Id_user`, `name`, `email`, `password`, `typeuser`, `create_at`)"
				+ " VALUES (?,?,?,?,?,?);";
			conn = DatabaseConfig.getConnection();
			sttm = conn.prepareStatement(sql);	
			sttm.setLong(1, user.getId_user());
			sttm.setString(2, user.getName());
			sttm.setString(3, user.getEmail());
			sttm.setString(4, user.getPassword());
			sttm.setString(5, user.getTypeuser());
			sttm.setTimestamp(6, user.getCreate_at());
	
			if(sttm.executeUpdate()>0) {
				System.out.print("Thêm user thanh cong");
				return 1;
			}
			else {
				return 0;
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("error: " +e.toString());
		}
		finally {
			try {
				sttm.close();
				conn.close();
			}
			catch(Exception error){
				System.out.println("error: " +error.toString());
			}
		}
		return -1;
	}
	
	public Boolean CheckLogin(String email, String password) {
		List<Users> listUser = readUsers();
		for(Users u : listUser ) {
			if(u.getEmail().equals(email) && u.getPassword().equals(password) ) {

				return true;
			}
		}
		return false;

	}
	
	
}