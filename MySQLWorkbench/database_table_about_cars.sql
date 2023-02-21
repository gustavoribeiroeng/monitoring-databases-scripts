CREATE DATABASE cars;
USE cars;
CREATE TABLE `car_inventory` (
  `id` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `make` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `year` int DEFAULT NULL,
  `mileage` int DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `transmission` varchar(20) DEFAULT NULL,
  `fuel_type` varchar(20) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `availability` bit(1) DEFAULT NULL,
  `engine_size` float DEFAULT NULL,
  `cylinders` int DEFAULT NULL,
  `horsepower` int DEFAULT NULL,
  `torque` int DEFAULT NULL,
  `zero_to_sixty` float DEFAULT NULL,
  `top_speed` int DEFAULT NULL,
  `length` float DEFAULT NULL,
  `width` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO car_inventory (id, created_at, updated_at, make, model, year, mileage, color, transmission, fuel_type, price, availability, engine_size, cylinders, horsepower, torque, zero_to_sixty, top_speed, length, width, height)
VALUES
  (1, NOW(), NOW(), 'Toyota', 'Corolla', 2020, 15000, 'Red', 'Automatic', 'Gasoline', 15000.00, 1, 1.8, 4, 132, 128, 9.7, 125, 183.1, 70.1, 56.5),
  (2, NOW(), NOW(),'Honda', 'Civic', 2019, 18000, 'Blue', 'Manual', 'Gasoline', 17000.00, 0, 1.5, 4, 158, 138, 8.2, 135, 177.9, 70.8, 56.5),
  (3, NOW(), NOW(),'Chevrolet', 'Impala', 2018, 20000, 'Black', 'Automatic', 'Gasoline', 20000.00, 1, 2.5, 4, 197, 191, 6.4, 130, 201.3, 73, 58.9),
  (4, NOW(), NOW(),'Ford', 'Fusion', 2021, 10000, 'White', 'Automatic', 'Gasoline', 23000.00, 1, 2.0, 4, 181, 185, 7.3, 145, 191.8, 72.9, 58.1),
  (5, NOW(), NOW(),'BMW', '3 Series', 2022, 5000, 'Gray', 'Automatic', 'Gasoline', 45000.00, 1, 3.0, 6, 382, 364, 4.4, 155, 185.7, 71.9, 56.8),
  (6, NOW(), NOW(),'Mercedes-Benz', 'C-Class', 2021, 8000, 'Silver', 'Automatic', 'Gasoline', 50000.00, 0, 2.0, 4, 255, 273, 5.7, 155, 184.5, 71.3, 56.3),
  (7, NOW(), NOW(),'Tesla', 'Model S', 2020, 10000, 'Red', 'Electric', 'Electricity', 80000.00, 1, NULL, NULL, 588, 687, 2.4, 200, 196, 77.3, 56.9),
  (8, NOW(), NOW(),'Toyota', 'Camry', 2017, 25000, 'Black', 'Automatic', 'Hybrid', 18000.00, 1, 2.5, 4, 208, 163, 7.9, 125, 192.7, 72.4, 56.9),
  (9, NOW(), NOW(),'Nissan', 'Maxima', 2019, 15000, 'White', 'Automatic', 'Gasoline', 22000.00, 1, 3.5, 6, 300, 261, 5.7, 135, 192.8, 73.2, 56.5);
  
SELECT * FROM cars.car_inventory;