

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
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	Connection con;
	PreparedStatement pst;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		int row;
		
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/<" database name ">","root","< "password" >");
			
			String name = request.getParameter("name");
			String classes = request.getParameter("class");
			String date = request.getParameter("date");
			String email = request.getParameter("email");
			String pass = request.getParameter("pass");
			String address = request.getParameter("address");
			
			pst = con.prepareStatement("insert into register1(name,class,dateofbirth,email,password,address) values(?,?,?,?,?,?) ");
			pst.setString(1, name);
			pst.setString(2, classes);
			pst.setString(3, date);
			pst.setString(4, email);
			pst.setString(5, pass);
			pst.setString(6, address);
			
			row = pst.executeUpdate();
			
			out.println("<font color='green'>Register Success fully</font>");
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.include(request, response);
			
		}catch(SQLException e)
		{
			out.println("<font color='red' size='50px' font-align='center'>Register Failed</font>");
			e.printStackTrace();
		} catch (ClassNotFoundException ex) {
			// TODO Auto-generated catch block
			
			Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
		}
		
	}

}
