package com.bike_shop.connectionProvider;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
    private final static String DRIVER_PACKAGE = "com.mysql.cj.jdbc.Driver";
    private final static String DB_URL = "jdbc:mysql://localhost:3307/bike";
    private final static String USER = "root";
    private final static String PASSWORD = "1234";

    static Connection connection;

    public static Connection createConnection() {
        try {
            Class.forName("DRIVER_PACKAGE");
            connection = DriverManager.getConnection(DB_URL, USER, PASSWORD);
        } catch (Exception error) {
            System.out.println("Error from Connection: 21 " + error.getMessage());
        }

        return connection;
    }
}
