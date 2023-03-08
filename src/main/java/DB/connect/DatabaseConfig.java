package DB.connect;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
public class DatabaseConfig {
	
	
	 public static void main(String[] args) {
	        String jdbcUrl = "jdbc:mysql://localhost/quanlybanhang";
	        String username = "root";
	        String password = "";
	        
	        try {
	            System.out.println("Connecting to database: " + jdbcUrl);
	            Connection connection = DriverManager.getConnection(jdbcUrl, username, password);
	            System.out.println("Connection successful!");
	            connection.close();
		        } catch (SQLException e) {
		            System.out.println("Connection failed. Error message: " + e.getMessage());
		        }
	    }
}
