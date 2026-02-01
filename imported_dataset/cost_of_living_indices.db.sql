CREATE DATABASE IF NOT EXISTS urban_efficiency_2025;
USE urban_efficiency_2025;

CREATE TABLE IF NOT EXISTS cost_of_living_indices (
  id INT AUTO_INCREMENT PRIMARY KEY,
  city VARCHAR(64) NOT NULL,
  country CHAR(2) NOT NULL,
  col_index DECIMAL(6,1) NOT NULL,
  rent_index DECIMAL(6,1) NOT NULL,
  col_plus_rent_index DECIMAL(6,1) NOT NULL,
  groceries_index DECIMAL(6,1) NOT NULL,
  restaurant_price_index DECIMAL(6,1) NOT NULL,
  purchasing_power_index DECIMAL(7,1) NOT NULL,
  year SMALLINT NOT NULL,
  region_group VARCHAR(32) NOT NULL,
  UNIQUE KEY uq_city_country_year (city, country, year)
);
