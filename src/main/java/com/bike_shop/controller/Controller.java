package com.bike_shop.controller;


import com.bike_shop.DataAccessObject.BikeDAO;
import com.bike_shop.bike_shop.Bike;
import com.google.gson.Gson;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/api/bike")
public class Controller extends HttpServlet {

    private final Gson gson = new Gson();
    private PrintWriter out;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        PrintWriter out = resp.getWriter();
        try {
            List<Bike> allBikes = BikeDAO.getAllBikes();

            resp.addHeader("Content-Type", "application/json");
            req.setAttribute("All_Bikes",allBikes);
            out.println(gson.toJson(allBikes));
            out.close();
        } catch (Exception error) {
            System.out.println(error.getMessage());
        }

    }

    // Post a new bike product information
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        String bike_name = req.getParameter("bike_name");
        String company = req.getParameter("company");
        String description = req.getParameter("description");
        float engine_power = Float.parseFloat(req.getParameter("engine_power"));
        float price = Float.parseFloat(req.getParameter("price"));

        try {
            Bike bikeData = new Bike(0, bike_name, company, description, engine_power, price);
            boolean response = BikeDAO.insertBike(bikeData);

            out = resp.getWriter();
            if (response) {
                resp.addHeader("Content-Type", "application/json");
                out.println(gson.toJson("New bike was inserted"));
                System.out.println("New bike was inserted");
            } else {
                resp.addHeader("Content-Type", "application/json");
                out.println(gson.toJson("Insertion failed"));
                System.out.println("Insertion failed");
            }
        } catch (Exception error) {
            System.out.println(error.getMessage());
        }

    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) {

        try {
            // http://localhost:8080/api/bike?id=1
            int delete_id = Integer.parseInt(req.getParameter("id"));
            boolean response = BikeDAO.deleteBike(delete_id);

            out = resp.getWriter();

            resp.addHeader("Content-Type", "application/json");

            if (response) {
                out.println(gson.toJson("ID: " + delete_id + ". Bike was deleted"));
                System.out.println("Bike was deleted");
            } else {
                out.println(gson.toJson("Deletion failed"));
                System.out.println("Deletion failed");
            }
        } catch (Exception error) {
            System.out.println(error.getMessage());
        }
    }
}
