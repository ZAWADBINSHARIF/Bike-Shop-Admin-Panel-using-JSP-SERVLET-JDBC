package com.bike_shop.bike_shop;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class BikeDAO {

    public static boolean insertBike(Bike bike) {
        try {
            Connection connection = ConnectionProvider.createConnection();
            String query = "INSERT INTO bikes(bike_name, company, description, engine_power, price) VALUES(?,?,?,?,?)";

            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, bike.bike_name());
            statement.setString(2, bike.company());
            statement.setString(3, bike.description());
            statement.setFloat(4, bike.engine_power());
            statement.setFloat(5, bike.price());

            statement.executeUpdate();
            return true;
        } catch (Exception error) {
            System.out.println(error.getMessage());

            return false;
        }
    }
}
