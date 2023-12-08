package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.UserDAO;
import dbconnection.DBConnection;
import model.User;

public class UserDAOImpl implements UserDAO{

	private final String INSERT_QUERY = "insert into user (first_name,last_name,email,gender,password) values(?,?,?,?,?)";
	private final String SELECT_QUERY = "select * from user";
	
	@Override
	public boolean addUser(User user) {
		Connection conn = DBConnection.getConnection();
		boolean success = false;
		try {
			PreparedStatement ps =  conn.prepareStatement(INSERT_QUERY);
			
			ps.setString(1, user.getFirstName());
			ps.setString(2, user.getLastName());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getGender());
			ps.setString(5, user.getPassword());
			int temp = ps.executeUpdate();
			if(temp==1) {
				success=true;
			}
			System.out.println("From user dao :"+success);
			return success;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return success;
	}


	@Override
	public List<User> getUsers() {
		Connection conn = DBConnection.getConnection();
		List<User> list = new ArrayList<>();
		try {
			PreparedStatement ps =  conn.prepareStatement(SELECT_QUERY);
			
			ResultSet rst = ps.executeQuery();
			
			while(rst.next()) {
				User user = new User();
				user.setEmail(rst.getString("email"));
				user.setPassword(rst.getString("password"));
				list.add(user);
				
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	

}
