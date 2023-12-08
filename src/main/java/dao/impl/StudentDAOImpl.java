package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import model.Student;
import dao.StudentDAO;
import dao.impl.*;
import dbconnection.DBConnection;

public class StudentDAOImpl implements StudentDAO{

	private final String SELECT_QUERY = "select * from student";
	private final String INSERT_QUERY = "insert into student (first_name,last_name,department,rollno) values(?,?,?,?)";
	private final String DELETE_QUERY = "delete from student where id=?";
	private final String UPDATE_QUERY = "update student set first_name=?,last_name=?,department=?,rollNo=? where id=?";
	@Override
	public List<Student> getAllStudents() {
		Connection conn = DBConnection.getConnection();
		List<Student> list = new ArrayList<>();
		
		PreparedStatement ps;
		try {
			ps = conn.prepareStatement(SELECT_QUERY);
			ResultSet rst = ps.executeQuery();
			
			while(rst.next()) {
				Student student = new Student();
				student.setId(rst.getInt("id"));
				student.setFirstName(rst.getString("first_name"));
				student.setLastName(rst.getString("last_name"));
				student.setDepartment(rst.getString("department"));
				student.setRollNo(rst.getString("rollno"));
				
				list.add(student);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	@Override
	public void addStudent(Student student) {
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(INSERT_QUERY);
			
			ps.setString(1, student.getFirstName());
			ps.setString(2, student.getLastName());
			ps.setString(3, student.getDepartment());
			ps.setString(4, student.getRollNo());
			ps.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	@Override
	public Student deleteStudent(int id) {
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(DELETE_QUERY);
			ps.setInt(1, id);
			Student student = new Student();
			student.setId(id);
			ps.executeUpdate();
			return student;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	@Override
	public void updateStudent(Student student) {
		Connection conn = DBConnection.getConnection();
		try {
			PreparedStatement ps = conn.prepareStatement(UPDATE_QUERY);
			
			Student st = new Student();
			
			ps.setString(1, student.getFirstName());
			ps.setString(2, student.getLastName());
			ps.setString(3, student.getDepartment());
			ps.setString(4, student.getRollNo());
			ps.setInt(5, student.getId());
			ps.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
}
