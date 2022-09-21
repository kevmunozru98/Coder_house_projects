
CREATE DATABASE Express_Colombia;

-- tabla de clients
CREATE TABLE `Express_Colombia`.`clients` (
  `client_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `phone_number` INT NULL,
  `city` VARCHAR(45) NULL,
  `document_id` INT NULL,
  `email` VARCHAR(45) NULL,
  `document_type` VARCHAR(45) NULL,
  PRIMARY KEY (`client_id`));
  
  -- tabla de productos
  CREATE TABLE `Express_Colombia`.`products` (
  `product_id` INT NOT NULL,
  `price` FLOAT NULL,
  `supplier_id` INT NULL,
  `product_type` VARCHAR(45) NULL,
  `pickup_date` DATE NULL,
  `delivery_date` DATE NULL,
  `client_id` INT NULL,
  PRIMARY KEY (`product_id`),
  FOREIGN KEY (`client_id`) REFERENCES clients(`client_id`));

-- tabla de payments
CREATE TABLE `Express_Colombia`.`payments` (
  `payment_id` INT NOT NULL,
  `amount` FLOAT NULL,
  `invoice_id` INT NULL,
  `product_type` VARCHAR(45) NULL,
  `product_id` INT NULL,
  `client_id` INT NULL,
  PRIMARY KEY (`payment_id`),
  FOREIGN KEY (`client_id`) REFERENCES clients(`client_id`));
  
  -- tabla de suppliers
  CREATE TABLE `Express_Colombia`.`suppliers`(
  `supplier_id` INT NOT NULL,
  `vehicule_id` INT NULL,
  `vehicule_type` VARCHAR(45) NULL,
  `employee_id` INT NULL,
  `office_id` INT NOT NULL,
  PRIMARY KEY (`supplier_id`),
  FOREIGN KEY (`office_id`) REFERENCES office(`office_id`));
  
  -- tabla de office
  CREATE TABLE `Express_Colombia`.`office` (
  `office_id` INT NOT NULL,
  `city` VARCHAR(45) NULL,
  `employee_id` INT NULL,
  PRIMARY KEY (`office_id`));
