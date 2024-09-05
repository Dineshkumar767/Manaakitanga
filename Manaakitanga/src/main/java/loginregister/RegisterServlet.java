package loginregister;


import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



// import other necessary classes

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String mobileno = request.getParameter("mobileno");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");

        if (!password.equals(repassword)) {
            request.setAttribute("errorMessage", "Passwords do not match");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
            return;
        }

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/donations", "root", "Dinnu@123");

            // Prepare SQL query
            String sql = "INSERT INTO users (username, mobileno, email, password) VALUES (?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, mobileno);
            stmt.setString(3, email);
            stmt.setString(4, password);

            // Execute the query
            stmt.executeUpdate();

            // Redirect to login page
            response.sendRedirect("login.jsp");

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Error during registration");
            request.getRequestDispatcher("signup.jsp").forward(request, response);
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
