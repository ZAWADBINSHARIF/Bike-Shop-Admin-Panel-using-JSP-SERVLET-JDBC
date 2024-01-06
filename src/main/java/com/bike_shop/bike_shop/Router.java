package com.bike_shop.bike_shop;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/api/bike")
public class Router extends HttpServlet {

    // Get all bike products information
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        out.println("HELLO THIS IS API/PRODUCT GET METHOD");
    }

    // Post a new bike product information
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String bike_name = req.getParameter("bike_name");
        String company = req.getParameter("company");
        String description = req.getParameter("description");
        float engine_power = Float.parseFloat(req.getParameter("engine_power"));
        float price = Float.parseFloat(req.getParameter("price"));

        try {
            Bike bikeData = new Bike(bike_name, company, description, engine_power, price);
            boolean response = BikeDAO.insertBike(bikeData);

            if (response) {
                System.out.println("New bike was inserted");
            } else {
                System.out.println("Insertion failed");
            }
        } catch (Exception error) {
            System.out.println(error.getMessage());
        }

    }
}
