CREATE DATABASE IF NOT EXISTS springboot;
USE springboot;

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `mobile_no` bigint DEFAULT NULL,
  PRIMARY KEY (`user_id`)
);




CREATE TABLE IF NOT EXISTS `restaurants` (
  `restaurant_id` int NOT NULL AUTO_INCREMENT,
  `restaurant_name` varchar(100) DEFAULT NULL,
  `username` varchar(100),
  `password` varchar(100),
  `address` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`restaurant_id`)
);

CREATE TABLE IF NOT EXISTS `menu` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(50) DEFAULT NULL,
  `restaurant_id` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`)
);

CREATE TABLE IF NOT EXISTS `orderhistory` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `details` varchar(500) DEFAULT NULL,
  `totaol_cost` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orderhistory_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
);

CREATE TABLE IF NOT EXISTS `feedback` (
  `restaurant_id` int DEFAULT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`feedback_id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`)
);

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
);
