package com.example.Art_Gallery;

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "CheckOutServlet", value = "/checkOut-servlet")
public class CheckOutServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String query = "update orders set OrderStatus = 'ordered' where CustomerID = " + CurrentUser.getCustomerID();
        try {
            MyDatabase.modifyDatabase(query);
        } catch (Exception e) {
            e.printStackTrace();
        }

        getServletContext().getRequestDispatcher("/thankYouMyAccount.jsp").forward(request, response);

    }
    public void destroy() {
    }

}