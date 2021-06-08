package com.example.Art_Gallery;

public class CurrentUser {
    private static int UserID;
    private static int CustomerID;

    public static int getUserID() {
        return UserID;
    }

    public static void setUserID(int userID) {
        UserID = userID;
    }

    public static int getCustomerID() {
        return CustomerID;
    }

    public static void setCustomerID(int customerID) {
        CustomerID = customerID;
    }
}
