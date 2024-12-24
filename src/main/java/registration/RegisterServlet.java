package registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fullname = request.getParameter("fullname");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Connect to the database
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gas_delivery", "root", "");
            
            // SQL query to insert user data into 'users' table
            String sql = "INSERT INTO users (username, password, fullname, address, phone, email) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);
            stmt.setString(3, fullname);
            stmt.setString(4, address);
            stmt.setString(5, phone);
            stmt.setString(6, email);
            
            // Execute the query
            int rowsInserted = stmt.executeUpdate();
            
            // Check if the insertion was successful
            if (rowsInserted > 0) {
                // Redirect to login.jsp if registration is successful
                response.sendRedirect("login.jsp");
            } else {
                // Redirect back to register.jsp if registration fails
                response.sendRedirect("register.jsp");
            }
            
            // Close the database connection
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle any errors (e.g., display error message, log error, redirect to error page)
            response.sendRedirect("error.jsp");
        }
    }
}


