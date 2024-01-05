package com.bike_shop.bike_shop;

public record Bike(
        String bike_name,
        String description,
        String company,
        float engine_power,
        float price
) {
}