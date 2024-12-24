<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delivery Predictions</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>Delivery Predictions</h2>
    <%
        String username = (String) session.getAttribute("username");
        if (username == null) {
            response.sendRedirect("login.jsp");
        } else {
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/gas_delivery_system", "root", "password");
                String query = "SELECT o.order_id, o.delivery_date, r.estimated_time_minutes " +
                               "FROM Orders o " +
                               "JOIN Routes r ON o.order_id = r.order_id " +
                               "WHERE o.user_id = (SELECT user_id FROM Users WHERE username = ?)";
                pstmt = conn.prepareStatement(query);
                pstmt.setString(1, username);
                rs = pstmt.executeQuery();
    %>
    <table border="1">
        <tr>
            <th>Order ID</th>
            <th>Delivery Date</th>
            <th>Estimated Delivery Time (minutes)</th>
        </tr>
        <%
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("order_id") %></td>
            <td><%= rs.getDate("delivery_date") %></td>
            <td><%= rs.getInt("estimated_time_minutes") %></td>
        </tr>
        <%
            }
        %>
    </table>
    <%
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
            }
        }
    %>
</body>
</html>


