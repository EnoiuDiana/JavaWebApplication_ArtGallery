package com.example.Art_Gallery;

import java.io.*;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "signupServlet", value = "/signup-servlet")
public class SignupServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // read data
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String password2 = request.getParameter("password2");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String phone = request.getParameter("phone");
        String building = request.getParameter("building");
        String street = request.getParameter("street");
        String city = request.getParameter("city");
        String country = request.getParameter("country");

        // do some processing here...
        if(!password.equals(password2) || !isNumeric(phone) || !isValidEmailAddress(email) || phone.length() != 10) {
            getServletContext().getRequestDispatcher("/IncDataErrorRegister.jsp").forward(request,response);
        } else {
            String query = "select * from user";
            try {
                boolean signedUp = true;
                ResultSet resultSet = MyDatabase.readDatabase(query);
                if (resultSet != null) {
                    while (resultSet.next()) {
                        String usernameInDatabase = resultSet.getString(2);
                        String emailInDatabase = resultSet.getString(5);
                        if (usernameInDatabase.equals(username)) {
                            getServletContext().getRequestDispatcher("/ErrorRegister.jsp").forward(request, response);
                            signedUp = false;
                        } else if (emailInDatabase.equals(email)) {
                            getServletContext().getRequestDispatcher("/ErrorRegister.jsp").forward(request, response);
                            signedUp = false;
                        }
                    }
                    if (signedUp) {
                        String signupQuery = "insert into user (username, firstname, lastname, email, phone, password) " +
                                "values ('" + username + "', '" + firstname + "', '" + lastname + "', '" + email + "', '" + phone + "', '" + password + "')";
                        MyDatabase.modifyDatabase(signupQuery);
                        signupQuery = "insert into address (building, city, country, street) " +
                                "values ('" + building + "', '" + city + "', '" + country + "', '" + street + "')";
                        MyDatabase.modifyDatabase(signupQuery);
                        String userIDQuery = "select userID from user ORDER BY UserID DESC LIMIT 1";
                        ResultSet rsUserID = MyDatabase.readDatabase(userIDQuery);
                        String addressIDQuery = "select AddressID from address order by AddressID DESC LIMIT 1";
                        ResultSet rsAddressID = MyDatabase.readDatabase(addressIDQuery);

                        int userID = 0, addressID = 0;
                        if(rsUserID != null) {
                            while (rsUserID.next()) {
                                userID = rsUserID.getInt(1);
                            }
                        }
                        if(rsAddressID != null) {
                            while (rsAddressID.next()) {
                                addressID = rsAddressID.getInt(1);
                            }
                        }
                        signupQuery = "insert into customer (UserID, AddressID) " +
                                "values ('" + userID +"', '" + addressID + "')";
                        MyDatabase.modifyDatabase(signupQuery);
                        getServletContext().getRequestDispatcher("/SuccessfullySignup.jsp").forward(request, response);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    public void destroy() {
    }
    public static boolean isNumeric(String strNum) {
        if (strNum == null) {
            return false;
        }
        try {
            double d = Double.parseDouble(strNum);
        } catch (NumberFormatException nfe) {
            return false;
        }
        return true;
    }
    public boolean isValidEmailAddress(String email) {
        return email.contains("@yahoo.com") || email.contains("@gmail.com");
    }
}
