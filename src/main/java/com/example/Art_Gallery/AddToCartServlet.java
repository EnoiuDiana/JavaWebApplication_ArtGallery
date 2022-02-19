package com.example.Art_Gallery;


import java.io.*;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "AddToCartServlet", value = "/addToCart-servlet")
public class AddToCartServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        for (int i = 1; i <= 21; i++) {
            String btn_painting = request.getParameter("btn_painting" + i);
            if(btn_painting != null) {
                try {
                    addArtworkToCart(2 + i); //select the id from db
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        for (int i = 1; i <= 5; i++) {
            String btn_sculpture = request.getParameter("btn_sculpture" + i);
            if(btn_sculpture != null) {
                try {
                    addArtworkToCart(23 + i); //select the id from db
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        for (int i = 1; i <= 3; i++) {
            String btn_others = request.getParameter("btn_other" + i);
            if(btn_others != null) {
                try {
                    addArtworkToCart(28 + i); //select the id from db
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        getServletContext().getRequestDispatcher("/myAccount.jsp").forward(request, response);
        destroy();

    }
    public void addArtworkToCart(int artworkID) throws Exception {
        //see if painting is not already in cart
        int customerID = CurrentUser.getCustomerID();
        boolean artworkAlreadyAddedToCart = false;
        String verifyQuery = "select * from orders where OrderStatus = 'addedToCart' && CustomerID = " + customerID;
        ResultSet resultSet = MyDatabase.readDatabase(verifyQuery);
        if(resultSet != null) {
            while(resultSet.next()) {
                int artworkIDInDatabase = resultSet.getInt(2);
                if(artworkIDInDatabase == artworkID) {
                    artworkAlreadyAddedToCart = true;
                }
            }
        }
        if(!artworkAlreadyAddedToCart) {
            String query = "insert into orders (ArtID, CustomerID, OrderStatus) " +
                    "values ('" + artworkID + "','" + customerID + "', 'addedToCart')";
            MyDatabase.modifyDatabase(query);
        }
    }
}
