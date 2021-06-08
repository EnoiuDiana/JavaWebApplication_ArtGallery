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
        // read data
        String btn_painting1 = request.getParameter("btn_painting1");
        String btn_painting2 = request.getParameter("btn_painting2");
        String btn_painting3 = request.getParameter("btn_painting3");
        String btn_painting4 = request.getParameter("btn_painting4");
        String btn_painting5 = request.getParameter("btn_painting5");
        String btn_painting6 = request.getParameter("btn_painting6");
        String btn_painting7 = request.getParameter("btn_painting7");
        String btn_painting8 = request.getParameter("btn_painting8");
        String btn_painting9 = request.getParameter("btn_painting9");
        String btn_painting10 = request.getParameter("btn_painting10");
        String btn_painting11 = request.getParameter("btn_painting11");
        String btn_painting12 = request.getParameter("btn_painting12");
        String btn_painting13 = request.getParameter("btn_painting13");
        String btn_painting14 = request.getParameter("btn_painting14");
        String btn_painting15 = request.getParameter("btn_painting15");
        String btn_painting16 = request.getParameter("btn_painting16");
        String btn_painting17 = request.getParameter("btn_painting17");
        String btn_painting18 = request.getParameter("btn_painting18");
        String btn_painting19 = request.getParameter("btn_painting19");
        String btn_painting20 = request.getParameter("btn_painting20");
        String btn_painting21 = request.getParameter("btn_painting21");
        String btn_sculpture1 = request.getParameter("btn_sculpture1");
        String btn_sculpture2 = request.getParameter("btn_sculpture2");
        String btn_sculpture3 = request.getParameter("btn_sculpture3");
        String btn_sculpture4 = request.getParameter("btn_sculpture4");
        String btn_sculpture5 = request.getParameter("btn_sculpture5");
        String btn_other1 = request.getParameter("btn_other1");
        String btn_other2 = request.getParameter("btn_other2");
        String btn_other3 = request.getParameter("btn_other3");
        if(btn_painting1 != null) {
            try {
                System.out.println("the request method gave me this: " + btn_painting1);
                addArtworkToCart(3); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting2 != null) {
            try {
                addArtworkToCart(4); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting3 != null) {
            try {
                addArtworkToCart(5); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting4 != null) {
            try {
                addArtworkToCart(6); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting5 != null) {
            try {
                addArtworkToCart(7); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting6 != null) {
            try {
                addArtworkToCart(8); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting7 != null) {
            try {
                addArtworkToCart(9); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting8 != null) {
            try {
                addArtworkToCart(10); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting9 != null) {
            try {
                addArtworkToCart(11); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting10 != null) {
            try {
                addArtworkToCart(12); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting11 != null) {
            try {
                addArtworkToCart(13); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting12 != null) {
            try {
                addArtworkToCart(14); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting13 != null) {
            try {
                addArtworkToCart(15); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting14 != null) {
            try {
                addArtworkToCart(16); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting15 != null) {
            try {
                addArtworkToCart(17); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting16 != null) {
            try {
                addArtworkToCart(18); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting17 != null) {
            try {
                addArtworkToCart(19); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting18 != null) {
            try {
                addArtworkToCart(20); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting19 != null) {
            try {
                addArtworkToCart(21); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting20 != null) {
            try {
                addArtworkToCart(22); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_painting21 != null) {
            try {
                addArtworkToCart(23); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_sculpture1 != null) {
            try {
                addArtworkToCart(24); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_sculpture2 != null) {
            try {
                addArtworkToCart(25); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_sculpture3 != null) {
            try {
                addArtworkToCart(26); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_sculpture4 != null) {
            try {
                addArtworkToCart(27); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_sculpture5 != null) {
            try {
                addArtworkToCart(28); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_other1 != null) {
            try {
                addArtworkToCart(29); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_other2 != null) {
            try {
                addArtworkToCart(30); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(btn_other3 != null) {
            try {
                addArtworkToCart(31); //select the id from db
            } catch (Exception e) {
                e.printStackTrace();
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
