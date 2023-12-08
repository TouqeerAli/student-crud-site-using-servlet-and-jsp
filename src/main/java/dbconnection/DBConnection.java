package dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private DBConnection() {

	}

	public static Connection connection = null;

	public static Connection getConnection() {

		if (connection == null) {
			try {

				Class.forName("com.mysql.cj.jdbc.Driver");

				try {
					connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_db", "root", "root");
					System.out.println("connected");
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} catch (ClassNotFoundException e) {

				e.printStackTrace();
			}
		}

		return connection;
	}
}
