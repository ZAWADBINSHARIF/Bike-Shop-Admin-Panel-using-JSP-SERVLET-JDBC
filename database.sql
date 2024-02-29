CREATE DATABASE bike_admin_website;

CREATE TABLE `bike_admin_website`.`bikes` (
                                              `id` INT NOT NULL AUTO_INCREMENT,
                                              `bike_name` VARCHAR(100) NOT NULL,
                                              `description` MEDIUMTEXT NOT NULL,
                                              `company` VARCHAR(50) NOT NULL,
                                              `engine_power` FLOAT NOT NULL,
                                              `price` FLOAT NOT NULL,
                                              `img` VARCHAR(255) NULL,
                                              PRIMARY KEY (`id`));