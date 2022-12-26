package ua.com.torysem.webapp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LogoutServlet", value = "/LogoutServlet")
public class LogoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        //end the session and return the user to the authorization page
        HttpSession session = request.getSession(false);

        session.removeAttribute("login");
        session.removeAttribute("password");
        session.removeAttribute("name");
        session.removeAttribute("userList");

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
        requestDispatcher.include(request, response);
    }
}
