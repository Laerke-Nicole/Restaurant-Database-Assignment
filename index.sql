DROP DATABASE IF EXISTS RestaurantDB;
CREATE DATABASE RestaurantDB;
USE RestaurantDB;

CREATE TABLE PostalCode (
  PostalCode varchar(20) NOT NULL PRIMARY KEY,
  City varchar(168)
);

CREATE TABLE TableBooking (
  TableBookingID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  TableNumber int(255),
  BookingDate date,
  BookingTime timestamp,
  NumberOfGuests int(255),
  CustomerID int NOT NULL,
  RestaurantID int NOT NULL,
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
  FOREIGN KEY (RestaurantID) REFERENCES Restaurant(RestaurantID)
);

ALTER TABLE TableBooking
ADD FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
ADD FOREIGN KEY (RestaurantID) REFERENCES Restaurant(RestaurantID);

CREATE TABLE Customer (
  CustomerID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  FirstName varchar(50),
  LastName varchar(50),
  Email varchar(63),
  PhoneNumber varchar(15),
  Address varchar(255),
  PostalCode varchar(20),
  TableBookingID int NOT NULL,
  FOREIGN KEY (PostalCode) REFERENCES PostalCode(PostalCode),
  FOREIGN KEY (TableBookingID) REFERENCES TableBooking(TableBookingID)
);

CREATE TABLE Restaurant (
  RestaurantID int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  Name varchar(100),
  Email varchar(63),
  PhoneNumber varchar(15),
  Address varchar(255),
  PostalCode varchar(20),
  TableBookingID int NOT NULL,
  FOREIGN KEY (PostalCode) REFERENCES PostalCode(PostalCode),
  FOREIGN KEY (TableBookingID) REFERENCES TableBooking(TableBookingID)
);