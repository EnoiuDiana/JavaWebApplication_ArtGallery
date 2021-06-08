package com.example.Art_Gallery;

import java.sql.*;

public class MyDatabase {

    public static ResultSet readDatabase(String query) throws Exception {
        try {
            Connection connect = ConnectDatabase.getConnect();

            Statement statement = connect.createStatement();

            return statement.executeQuery(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    public static void modifyDatabase(String query) throws Exception {
        try {
            Connection connect = ConnectDatabase.getConnect();

            Statement statement = connect.createStatement();

            statement.executeUpdate(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
