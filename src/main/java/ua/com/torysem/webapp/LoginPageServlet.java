package ua.com.torysem.webapp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginPageServlet", value = "/LoginPageServlet")
public class LoginPageServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        response.setContentType("text/html");

        UserList userList = new UserList();

        //get login and password from form
        String enteredLogin = request.getParameter("login").trim();
        String enteredPassword = request.getParameter("password").trim();

        String name = "";
        String login = "";
        String password = "";

        //compare login and password to search for a user
        for(User user : userList.getUserList()){
            if (enteredLogin.equals(user.getLogin()) && enteredPassword.equals(user.getPassword())) {
                login = enteredLogin;
                password = enteredPassword;
                name = user.getName();
            }
        }

        //if the login and password are correct, go to the menu, otherwise - an error
        if (enteredLogin.equals(login) && enteredPassword.equals(password)) {
            session.setAttribute("login", login);
            session.setAttribute("password", password);
            session.setAttribute("name", name);
            session.setAttribute("userList", userList.getUserList());

            request.getRequestDispatcher("/menu.jsp").forward(request, response);
        } else {
            out.print("Wrong login or password.");
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/index.jsp");
            requestDispatcher.include(request, response);
        }
    }
}
