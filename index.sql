  DROP DATABASE IF EXISTS RestaurantDB;
  CREATE DATABASE RestaurantDB;
  USE RestaurantDB;

  CREATE TABLE PostalCode (
    PostalCode varchar(20) NOT NULL PRIMARY KEY,
    City varchar(168)
  ) ENGINE=InnoDB;

  CREATE TABLE `Table` (
    TableID int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    TableNumber int(255)
  ) ENGINE=InnoDB;

  CREATE TABLE Customer (
    CustomerID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FirstName varchar(50),
    LastName varchar(50),
    Email varchar(63),
    PhoneNumber varchar(15),
    Address varchar(255),
    PostalCode varchar(20),
    FOREIGN KEY (PostalCode) REFERENCES PostalCode(PostalCode)
  ) ENGINE=InnoDB;



  CREATE TABLE Restaurant (
    RestaurantID int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    Name varchar(100),
    Email varchar(63),
    PhoneNumber varchar(15),
    Address varchar(255),
    PostalCode varchar(20),
    FOREIGN KEY (PostalCode) REFERENCES PostalCode(PostalCode)
  ) ENGINE=InnoDB;

  CREATE TABLE TableBooking (
    TableBookingID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    BookingDate date,
    BookingTime varchar(8),
    NumberOfGuests int(255),
    TableID int NOT NULL,
    CustomerID int NOT NULL,
    RestaurantID int NOT NULL,
    FOREIGN KEY (TableID) REFERENCES `Table`(TableID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (RestaurantID) REFERENCES Restaurant(RestaurantID)
  ) ENGINE=InnoDB;


  -- postal code test data
  insert into PostalCode (PostalCode, City) values ('59500-000', 'Macau');
  insert into PostalCode (PostalCode, City) values ('L-6231', 'Bech');
  insert into PostalCode (PostalCode, City) values ('G8V', 'Gravelbourg');



  -- tables test data
  insert into `Table` (TableID, TableNumber) values (1, 1);
  insert into `Table` (TableID, TableNumber) values (2, 2);
  insert into `Table` (TableID, TableNumber) values (3, 3);
  insert into `Table` (TableID, TableNumber) values (4, 4);
  insert into `Table` (TableID, TableNumber) values (5, 5);
  insert into `Table` (TableID, TableNumber) values (6, 6);
  insert into `Table` (TableID, TableNumber) values (7, 7);
  insert into `Table` (TableID, TableNumber) values (8, 8);
  insert into `Table` (TableID, TableNumber) values (9, 9);
  insert into `Table` (TableID, TableNumber) values (10, 10);
  insert into `Table` (TableID, TableNumber) values (11, 11);
  insert into `Table` (TableID, TableNumber) values (12, 12);
  insert into `Table` (TableID, TableNumber) values (13, 13);
  insert into `Table` (TableID, TableNumber) values (14, 14);
  insert into `Table` (TableID, TableNumber) values (15, 15);
  insert into `Table` (TableID, TableNumber) values (16, 16);
  insert into `Table` (TableID, TableNumber) values (17, 17);
  insert into `Table` (TableID, TableNumber) values (18, 18);
  insert into `Table` (TableID, TableNumber) values (19, 19);
  insert into `Table` (TableID, TableNumber) values (20, 20);
  insert into `Table` (TableID, TableNumber) values (21, 21);
  insert into `Table` (TableID, TableNumber) values (22, 22);
  insert into `Table` (TableID, TableNumber) values (23, 23);
  insert into `Table` (TableID, TableNumber) values (24, 24);



  -- restaurant test data
  insert into Restaurant (RestaurantID, Name, Email, PhoneNumber, Address, PostalCode) values (1, 'Kiehn-Senger', 'theenan0@bbc.co.uk', '621-393-5154', '8 1st Plaza', '59500-000');
  insert into Restaurant (RestaurantID, Name, Email, PhoneNumber, Address, PostalCode) values (2, 'Brown Inc', 'onevett1@elegantthemes.com', '527-596-3891', '430 Lindbergh Road', 'L-6231');
  insert into Restaurant (RestaurantID, Name, Email, PhoneNumber, Address, PostalCode) values (3, 'Greenholt Group', 'cbaudet2@yahoo.co.jp', '266-256-6622', '3 Maple Wood Point', 'G8V');



  -- customer test data
  insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address, PostalCode) values (1, 'Geordie', 'Setch', 'gsetch0@reverbnation.com', '713-284-4843', '34638 Kinsman Road', '59500-000');
  insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address, PostalCode) values (2, 'Otho', 'Challenger', 'ochallenger1@nbcnews.com', '754-339-6720', '4 New Castle Hill', 'L-6231');
  insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address, PostalCode) values (3, 'Gabbie', 'Karchowski', 'gkarchowski2@technorati.com', '262-307-5574', '42684 Atwood Terrace', 'G8V');
  insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address, PostalCode) values (4, 'Berri', 'Berney', 'bberney3@miibeian.gov.cn', '368-486-1466', '38 Maple Plaza', '59500-000');
  insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address, PostalCode) values (5, 'Alon', 'Kittoe', 'akittoe4@chicagotribune.com', '110-650-1421', '487 Erie Road', 'L-6231');
  insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address, PostalCode) values (6, 'Patty', 'Premble', 'ppremble5@archive.org', '696-767-1511', '4 Roxbury Place', 'G8V');
  insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address, PostalCode) values (7, 'Jacklyn', 'Antrum', 'jantrum6@skype.com', '221-556-9925', '9465 Esker Point', '59500-000');
  insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address, PostalCode) values (8, 'Jacquie', 'Krolman', 'jkrolman7@google.nl', '340-981-2011', '520 Summit Crossing', 'L-6231');
  insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address, PostalCode) values (9, 'Cristin', 'Bosche', 'cbosche8@51.la', '618-476-0707', '3632 Utah Plaza', 'G8V');
  insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address, PostalCode) values (10, 'Kalvin', 'Gladwell', 'kgladwell9@posterous.com', '210-407-3895', '1 Pawling Road', '59500-000');



  -- table booking test data
  insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (1, '2024-03-23', '10:00 AM', 92, 1, 1, 1);
  insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (2, '2024-05-01', '10:19 AM', 201, 2, 2, 2);
  insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (3, '2023-11-02', '12:42 PM', 203, 3, 3, 3);
  insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (4, '2024-01-15', '9:28 PM', 191, 4, 4, 1);
  insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (5, '2024-05-10', '5:29 AM', 218, 5, 5, 2);
  insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (6, '9-13-2024-09-13', '6:49 PM', 29, 6, 6, 3);
  insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (7, '2023-12-24', '4:42 AM', 83, 7, 7, 1);
  insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (8, '2024-09-19', '4:26 AM', 132, 8, 8, 2);
  insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (9, '2024-05-14', '12:31 AM', 164, 9, 9, 3);
  insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (10, '2024-09-03', '12:04 AM', 15, 10, 10, 1);







  -- opgaver

  -- Get a list of all tables in the restaurant (overview for the front-end)
  -- (hvis han mener borde)
  SELECT TableNumber
  FROM `Table`;


  -- Get a list of all bookings for a given customer (when they arrive at the restaurant)
  -- ordered by date
