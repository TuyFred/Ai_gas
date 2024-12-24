package orderlist;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/OrderListServlet")
public class OrderListServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gas_delivery", "root", "password");
            
            // Get user ID based on username
            String userSql = "SELECT id FROM users WHERE username = ?";
            PreparedStatement userStmt = conn.prepareStatement(userSql);
            userStmt.setString(1, username);
            ResultSet userRs = userStmt.executeQuery();
            userRs.next();
            int userId = userRs.getInt("id");
            
            String orderSql = "SELECT * FROM orders WHERE user_id = ?";
            PreparedStatement orderStmt = conn.prepareStatement(orderSql);
            orderStmt.setInt(1, userId);
            ResultSet orderRs = orderStmt.executeQuery();
            
            ArrayList<Order> orderList = new ArrayList<>();
            while (orderRs.next()) {
                int id = orderRs.getInt("id");
                int quantity = orderRs.getInt("quantity");
                Timestamp orderDate = orderRs.getTimestamp("order_date");
                String status = orderRs.getString("status");
                orderList.add(new Order(id, userId, quantity, orderDate, status));
            }
            
            request.setAttribute("orderList", orderList);
            request.getRequestDispatcher("orderList.jsp").forward(request, response);
            
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
