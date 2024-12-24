 package creatorder;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CreateOrderServlet")
public class CreateOrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getSession().getAttribute("username").toString(); // Assuming username is stored in session
        String quantity = request.getParameter("quantity");
        String delivery_date = request.getParameter("delivery_date");
        String instructions = request.getParameter("instructions");

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gas_delivery", "root", "password");

            // SQL query to insert order data into 'orders' table
            String sql = "INSERT INTO orders (username, quantity, delivery_date, address) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setInt(2, Integer.parseInt(quantity));
            stmt.setString(3, delivery_date);
            stmt.setString(4, instructions); // Assuming instructions is the address

            // Execute the query
            int rowsInserted = stmt.executeUpdate();

            // Check if the insertion was successful
            if (rowsInserted > 0) {
                response.sendRedirect("orderSuccess.jsp"); // Redirect to success page
            } else {
                response.sendRedirect("createOrder.jsp"); // Redirect back to create order page
            }

            // Close the database connection
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            // Redirect to error page
            response.sendRedirect("error.jsp");
        }
    }
}
