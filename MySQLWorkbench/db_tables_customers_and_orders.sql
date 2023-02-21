CREATE DATABASE costumers_items_orders;

USE costumers_items_orders;

CREATE TABLE `customer` (
  `customer_id` char(10) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `credit_limit` int NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `merchandise_item` (
  `merchandise_item_id` char(10) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `unit_price` int DEFAULT NULL,
  `qoh` int DEFAULT NULL,
  `bundle_id` char(10) DEFAULT NULL,
  PRIMARY KEY (`merchandise_item_id`),
  UNIQUE KEY `description_idx` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `customer_order` (
  `customer_order_id` char(10) NOT NULL,
  `customer_id` char(10) DEFAULT NULL,
  PRIMARY KEY (`customer_order_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `customer_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `customer_order_line_item` (
  `customer_order_id` char(10) NOT NULL,
  `merchandise_item_id` char(10) NOT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`customer_order_id`,`merchandise_item_id`),
  KEY `item_id_fk` (`merchandise_item_id`),
  CONSTRAINT `customer_order_line_item_ibfk_1` FOREIGN KEY (`customer_order_id`) REFERENCES `customer_order` (`customer_order_id`),
  CONSTRAINT `item_id_fk` FOREIGN KEY (`merchandise_item_id`) REFERENCES `merchandise_item` (`merchandise_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `merchandise_item_supplier` (
  `merchandise_item_id` char(10) NOT NULL,
  `supplier_id` char(10) NOT NULL,
  PRIMARY KEY (`merchandise_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `supplier` (
  `supplier_id` char(10) NOT NULL,
  `supplier_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
