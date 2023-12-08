package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import dao.StudentDAO;
import dao.impl.*;
/**
 * Servlet implementation class DeleteStudentServlet
 */
@WebServlet("/DeleteStudentServlet")
public class DeleteStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteStudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentId = request.getParameter("id");
		 if (studentId != null) {
	            try {
	                
	                int id = Integer.parseInt(studentId);

	                StudentDAO studentDAO = new StudentDAOImpl();
	                studentDAO.deleteStudent(id);
	                response.sendRedirect("StudentListServlet");
	            } catch (NumberFormatException e) {
	                e.printStackTrace(); 
	                response.sendRedirect("StudentListServlet");
	            }
	        } else {
	            response.sendRedirect("StudentListServlet"); 
	        }
	    }
	}



