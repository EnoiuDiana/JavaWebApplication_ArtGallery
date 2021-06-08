package com.example.Art_Gallery;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "logoutServlet", value = "/logout-servlet")
public class LogoutServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        CurrentUser.setUserID(0);
        CurrentUser.setCustomerID(0);
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
