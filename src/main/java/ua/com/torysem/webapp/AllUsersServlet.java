package ua.com.torysem.webapp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AllUsersServlet", value = "/AllUsersServlet")
public class AllUsersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        //checking user authorization
        //only the authorized user has access to the page with the information of other users
        if (session.getAttribute("login") != null) {
            request.getRequestDispatcher("/users.jsp").forward(request, response);

        } else {
            //return the user to the authorization page
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
            requestDispatcher.include(request, response);
        }
    }
}
