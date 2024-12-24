package viewreport;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ViewReportsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Generate reports based on analytics data (e.g., fetch from database or calculate)
        ReportData reportData = reportService.generateReports(); // Example method to generate reports data

        // Set reportData attribute in request scope
        request.setAttribute("reportData", reportData);

        // Forward to JSP to display reports
        RequestDispatcher dispatcher = request.getRequestDispatcher("/viewReports.jsp");
        dispatcher.forward(request, response);
    }
}
