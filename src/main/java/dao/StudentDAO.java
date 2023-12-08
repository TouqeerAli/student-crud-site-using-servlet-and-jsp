package dao;

import java.util.List;

import model.Student;

public interface StudentDAO {
	List<Student> getAllStudents();
	void addStudent(Student student);
	Student deleteStudent(int id);
	void updateStudent(Student student);
}
