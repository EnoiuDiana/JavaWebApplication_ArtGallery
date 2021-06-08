package com.example.Art_Gallery;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "emptyCartServlet", value = "/emptyCart-servlet")
public class EmptyCartServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String query = "delete from orders where CustomerID = '" + CurrentUser.getCustomerID() + "' && OrderStatus = 'addedToCart'";
        try {
            MyDatabase.modifyDatabase(query);
        } catch (Exception e) {
            e.printStackTrace();
        }

        getServletContext().getRequestDispatcher("/myAccount.jsp").forward(request, response);
    }
}