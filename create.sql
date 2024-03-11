
create table `cars` (
`id` int AUTO_INCREMENT ,
`vin`varchar(20),
`manufacturer`varchar(20),
`model`varchar(20),
`year`year(4),
`color`varchar(20),
PRIMARY KEY (`id`)
);

create table `customers`(
`id`int AUTO_INCREMENT,
`cust_id` int(5),
`cust_name`varchar(50),
`cust_phone`varchar(20),
`cust_email`varchar(50),
`cust_address`varchar(50),
`cust_city`varchar(40),
`cust_state`varchar(40),
`cust_country`varchar(20),
`cust_zipcode`varchar(10),
PRIMARY KEY (`id`));

create table `customers`(
`id`int AUTO_INCREMENT,
`cust_id` int(5),
`cust_name`varchar(50),
`cust_phone`varchar(20),
`cust_email`varchar(50),
`cust_address`varchar(50),
`cust_city`varchar(40),
`cust_state`varchar(40),
`cust_country`varchar(20),
`cust_zipcode`varchar(10),
PRIMARY KEY (`id`));

create table `salepersons`(
`id`int AUTO_INCREMENT,
`staff_id`int(5),
`name`varchar(100),
`store`varchar(40),
PRIMARY KEY (`id`));

create table `invoices`(
`id`int AUTO_INCREMENT,
`invoice_number`int(10),
`date`date,
`car`int(1),
`customer`int(1),
`salesperson`int(1),
PRIMARY KEY (`id`),
CONSTRAINT `fk_car` FOREIGN KEY (`car`) REFERENCES `cars` (`id`),
CONSTRAINT `fk_cust` FOREIGN KEY (`customer`) REFERENCES `customers` (`id`),
CONSTRAINT `fk_staff` FOREIGN KEY (`salesperson`) REFERENCES `salepersons` (`id`));