package com.example.Art_Gallery;

import java.sql.*;

public class ConnectDatabase {
    private static Connection connect = null;
    private static final String url = "jdbc:mysql://localhost:3307/artgallery";
    private static final String user = "root";
    private static final String password = "";

    public static Connection getConnect() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            connect = DriverManager.getConnection(url, user, password);

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connect;
    }
}
