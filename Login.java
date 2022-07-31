


import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	Connection con;
	PreparedStatement pst;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		
		response.setContentType("text/html");
		int row;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/< "data base name" >","root","< "password" >");
			String email = request.getParameter("email");
			String pass = request.getParameter("pass");
			
			pst = con.prepareStatement("insert into login3(email,pass) values(?,?) ");
			pst.setString(1, email);
			pst.setString(2, pass);
			row = pst.executeUpdate();
			
			out.println("<font color= 'green'>Success Login</font>");
			RequestDispatcher rd = request.getRequestDispatcher("student.jsp");
			rd.include(request, response);
			
		}catch(ClassNotFoundException ex)
		{
			Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.println("<font color='red'> Failed Login </font>");
			
		}
		
	}

}
