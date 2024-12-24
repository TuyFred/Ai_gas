package manageroder;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.List;

public class ManageOrdersServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve list of orders from database or service layer
        List<Order> orderList = rderService.getAllOrders(); // Example method to fetch all orders

        // Set orders attribute in request scope
        request.setAttribute("orderList", orderList);

        // Forward to JSP to display orders
        RequestDispatcher dispatcher = request.getRequestDispatcher("/manageOrders.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Handle post requests for creating, updating, or deleting orders
        String action = request.getParameter("action");

        switch (action) {
            case "create":
                // Handle create order request
                break;
            case "update":
                // Handle update order request
                break;
            case "delete":
                // Handle delete order request
                break;
            default:
                // Invalid action
                break;
        }

        // Redirect back to doGet for displaying updated order list
        response.sendRedirect(request.getContextPath() + "/ManageOrdersServlet");
    }
}
