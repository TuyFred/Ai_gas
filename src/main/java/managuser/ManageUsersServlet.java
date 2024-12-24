package managuser;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.List;

public class ManageUsersServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve list of users from database or service layer
        List<User> userList = userService.getAllUsers(); // Example method to fetch all users

        // Set users attribute in request scope
        request.setAttribute("userList", userList);

        // Forward to JSP to display users
        RequestDispatcher dispatcher = request.getRequestDispatcher("/manageUsers.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Handle post requests for creating, updating, or deleting users
        String action = request.getParameter("action");

        switch (action) {
            case "create":
                // Handle create user request
                break;
            case "update":
                // Handle update user request
                break;
            case "delete":
                // Handle delete user request
                break;
            default:
                // Invalid action
                break;
        }

        // Redirect back to doGet for displaying updated user list
        response.sendRedirect(request.getContextPath() + "/ManageUsersServlet");
    }
}
