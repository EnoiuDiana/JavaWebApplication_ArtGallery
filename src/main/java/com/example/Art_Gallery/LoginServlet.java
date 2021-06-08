package com.example.Art_Gallery;

import java.io.*;
import java.sql.ResultSet;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "loginServlet", value = "/login-servlet")
public class LoginServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // read form fields
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // do some processing here...
        String query = "select * from user";
        try {
            boolean loggedIn = false;
            ResultSet resultSet = MyDatabase.readDatabase(query);
            if(resultSet != null) {
                while (resultSet.next()) {
                    int userID = resultSet.getInt(1);
                    String usernameInDatabase = resultSet.getString(2);
                    String passwordInDatabase = resultSet.getString(7);
                    if(usernameInDatabase.equals(username) && passwordInDatabase.equals(password)) {
                        CurrentUser.setUserID(userID);
                        CurrentUser.setCustomerID(userID);
                        getServletContext().getRequestDispatcher("/SuccessfullyLogin.jsp").forward(request,response);
                        loggedIn = true;
                    }
                }
                if(!loggedIn) {
                    getServletContext().getRequestDispatcher("/ErrorLogin.jsp").forward(request,response);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    public void destroy() {
    }
}