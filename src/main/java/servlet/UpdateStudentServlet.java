package servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Student;

import java.io.IOException;

import dao.StudentDAO;
import dao.impl.StudentDAOImpl;

/**
 * Servlet implementation class UpdateStudentServlet
 */
@WebServlet("/UpdateStudentServlet")
public class UpdateStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		 String studentId = request.getParameter("id");
//
//	        if (studentId != null && !studentId.isEmpty()) {
//	            try {
//	                // Convert the ID to integer
//	                int id = Integer.parseInt(studentId);
//
//	                // Retrieve the student object from the database using the ID
//	                StudentDAO studentDAO = new StudentDAOImpl();
//	                Student student = studentDAO.deleteStudent(id);
//
//	                // Set the student object as an attribute to be used in the JSP
//	                request.setAttribute("student", student);
//
//	                // Forward to the update form JSP
//	                RequestDispatcher dispatcher = request.getRequestDispatcher("StudentListServlet");
//	                dispatcher.forward(request, response);
//	            } catch (NumberFormatException e) {
//	                // Handle the case where the ID is not a valid integer
//	                e.printStackTrace(); // Log the exception or handle it accordingly
//	                response.sendRedirect("StudentListServlet"); // Redirect to the student list page
//	            }
//	        } else {
//	            // Handle the case where the ID parameter is not present
//	            response.sendRedirect("StudentListServlet"); // Redirect to the student list page
//	        }
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String rollNo = request.getParameter("rollNo");
        String department = request.getParameter("department");
        
        System.out.println(firstName);
        Student student = new Student();
        student.setId(id);
        student.setFirstName(firstName);
        student.setLastName(lastName);
        student.setDepartment(department);
        student.setRollNo(rollNo);
        
        StudentDAO studentDAO = new StudentDAOImpl();
        studentDAO.updateStudent(student);

        response.sendRedirect("StudentListServlet");
	}

}
