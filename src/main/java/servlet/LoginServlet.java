package servlet;
import dao.UserDAO;
import java.util.ArrayList;
import java.util.List;
import dao.impl.UserDAOImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

import java.io.IOException;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		
		System.out.println(userName);
		System.out.println(password);
		
		UserDAO userDAO = new UserDAOImpl();
		List<User> usersList = userDAO.getUsers();
		for(User user: usersList) {
			System.out.println(user.getEmail());
			System.out.println(user.getPassword());
			
			if(user.getEmail().equals(userName) && user.getPassword().equals(password)) {
				
				response.sendRedirect("StudentListServlet");
			}else if(usersList.indexOf(user) == (usersList.size()-1)){
//				HttpSession session = request.getSession();
//				session.setAttribute("isIncorrect", true);
//				
//				RequestDispatcher dispatcher = request.getRequestDispatcher("/incorrectPassword.jsp");
//				dispatcher.include(request, response);
				HttpSession session = request.getSession();
				session.setAttribute("error", "Invalid username or password");
				RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
				dispatcher.include(request, response);
			}
		}
		
	}

}
