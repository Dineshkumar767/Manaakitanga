package donation;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.RequestDispatcher;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet({"/SubmitDonation", "/SubmitFoodDonation"})
public class SubmitDonation extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String servletPath = request.getServletPath();

        if ("/SubmitDonation".equals(servletPath)) {
            handleBookDonation(request, response);
        } else if ("/SubmitFoodDonation".equals(servletPath)) {
            handleFoodDonation(request, response);
        }
    }

    private void handleBookDonation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String donername = request.getParameter("donername");
        String bookname = request.getParameter("bookname");
        String bookauthor = request.getParameter("bookauthor");
        String bookyear = request.getParameter("bookyear");
        String quantity = request.getParameter("quantity");
        String donormobileno = request.getParameter("donormobileno");
        String donoraddress = request.getParameter("donoraddress");

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/donations", "root", "Dinnu@123");

            // Prepare SQL query
            String sql = "INSERT INTO book_donations (donername, bookname, bookauthor, bookyear, Quantity, donormobileno, donoraddress) VALUES (?, ?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, donername);
            stmt.setString(2, bookname);
            stmt.setString(3, bookauthor);
            stmt.setString(4, bookyear);
            stmt.setInt(5, Integer.parseInt(quantity));
            stmt.setString(6, donormobileno);
            stmt.setString(7, donoraddress);

            // Execute the query
            stmt.executeUpdate();

            // Forward request to success.jsp with parameters
            request.setAttribute("donername", donername);
            request.setAttribute("bookname", bookname);
            request.setAttribute("bookauthor", bookauthor);
            request.setAttribute("bookyear", bookyear);
            request.setAttribute("quantity", quantity);

            RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
            dispatcher.forward(request, response);

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    private void handleFoodDonation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String donername = request.getParameter("donername");
        String recipient = request.getParameter("recipient");
        String donationAmount = request.getParameter("donationAmount");
        String donormobileno = request.getParameter("donormobileno");
        String donoraddress = request.getParameter("donoraddress");

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/donations", "root", "Dinnu@123");

            // Prepare SQL query
            String sql = "INSERT INTO food_donations (donername, recipient, donationAmount, donormobileno, donoraddress) VALUES (?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, donername);
            stmt.setString(2, recipient);
            stmt.setDouble(3, Double.parseDouble(donationAmount));
            stmt.setString(4, donormobileno);
            stmt.setString(5, donoraddress);

            // Execute the query
            stmt.executeUpdate();

            // Set attributes for the JSP page
            request.setAttribute("donationAmount", donationAmount);
            request.setAttribute("donername", donername);
            request.setAttribute("recipient", recipient);

            // Forward to JSP for redirection
            RequestDispatcher dispatcher = request.getRequestDispatcher("redirectToPayment.jsp");
            dispatcher.forward(request, response);

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}