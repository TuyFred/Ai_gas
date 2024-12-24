package viewanalytics;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ViewAnalyticsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Generate analytics data (e.g., fetch from database or calculate)
        AnalyticsData analyticsData = analyticsService.generateAnalytics(); // Example method to generate analytics data

        // Set analyticsData attribute in request scope
        request.setAttribute("analyticsData", analyticsData);

        // Forward to JSP to display analytics
        RequestDispatcher dispatcher = request.getRequestDispatcher("/viewAnalytics.jsp");
        dispatcher.forward(request, response);
    }
}
