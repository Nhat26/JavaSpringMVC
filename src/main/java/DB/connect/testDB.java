package DB.connect;

import java.sql.Connection;

import DAO.ProductDAO;
import model.Product;

public class testDB {
	public static void main(String[] args) {
		Connection conn = DatabaseConfig.getConnection();
		ProductDAO login = new ProductDAO();
		if(conn != null) {
			System.out.print("Connect thanh cong\n");
			Product pd = new Product(123123,"1",1,"1","1","1", "1", null, 1);
			login.addProduct(pd);
		}
	}
}
