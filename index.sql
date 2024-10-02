  DROP DATABASE IF EXISTS RestaurantDB;
  CREATE DATABASE RestaurantDB;
  USE RestaurantDB;

-- Table with postal code
  CREATE TABLE PostalCode (
    PostalCode varchar(20) NOT NULL PRIMARY KEY,
    City varchar(168)
  ) ENGINE=InnoDB;


-- Table with tables
  CREATE TABLE `Table` (
    TableID int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    TableNumber int(255)
  ) ENGINE=InnoDB;


-- Table with customer info
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


-- table with restaurant info
  CREATE TABLE Restaurant (
    RestaurantID int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    Name varchar(100),
    Email varchar(63),
    PhoneNumber varchar(15),
    Address varchar(255),
    PostalCode varchar(20),
    FOREIGN KEY (PostalCode) REFERENCES PostalCode(PostalCode)
  ) ENGINE=InnoDB;


-- table with table booking info
  CREATE TABLE TableBooking (
    TableBookingID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    BookingDate date,
    BookingTime varchar(8),
    NumberOfGuests int(25),
    AmountOfTablesBooked int(3),
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
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (1, '2024-01-01', '6:54 PM', 5, 3, 2, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (2, '2024-01-04', '8:46 PM', 16, 1, 18, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (3, '2024-01-02', '6:06 PM', 17, 1, 15, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (4, '2024-01-01', '9:56 PM', 23, 1, 11, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (5, '2024-01-04', '6:10 PM', 5, 2, 14, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (6, '2024-01-02', '8:48 PM', 13, 2, 14, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (7, '2024-01-05', '7:41 PM', 19, 1, 7, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (8, '2024-01-04', '6:00 PM', 7, 2, 1, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (9, '2024-01-03', '6:05 PM', 3, 2, 18, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (10, '2024-01-01', '7:25 PM', 13, 1, 23, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (11, '2024-01-04', '5:02 PM', 22, 2, 15, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (12, '2024-01-01', '6:39 PM', 1, 1, 18, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (13, '2024-01-01', '5:14 PM', 10, 1, 16, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (14, '2024-01-01', '8:57 PM', 21, 1, 7, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (15, '2024-01-03', '5:46 PM', 7, 1, 6, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (16, '2024-01-03', '8:45 PM', 8, 3, 24, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (17, '2024-01-02', '7:15 PM', 14, 2, 19, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (18, '2024-01-05', '7:38 PM', 1, 3, 4, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (19, '2024-01-03', '8:00 PM', 25, 3, 9, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (20, '2024-01-02', '8:21 PM', 10, 1, 1, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (21, '2024-01-04', '5:29 PM', 12, 2, 4, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (22, '2024-01-02', '6:43 PM', 25, 1, 5, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (23, '2024-01-05', '5:06 PM', 12, 3, 9, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (24, '2024-01-04', '9:11 PM', 15, 3, 6, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (25, '2024-01-02', '5:57 PM', 5, 2, 9, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (26, '2024-01-05', '8:22 PM', 7, 3, 9, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (27, '2024-01-04', '5:22 PM', 21, 1, 20, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (28, '2024-01-01', '9:51 PM', 24, 2, 7, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (29, '2024-01-05', '8:37 PM', 8, 2, 20, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (30, '2024-01-02', '5:15 PM', 10, 2, 10, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (31, '2024-01-03', '6:57 PM', 8, 2, 21, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (32, '2024-01-04', '7:21 PM', 21, 3, 21, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (33, '2024-01-03', '9:04 PM', 22, 1, 5, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (34, '2024-01-03', '6:44 PM', 4, 1, 15, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (35, '2024-01-02', '5:07 PM', 20, 2, 3, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (36, '2024-01-02', '5:05 PM', 18, 1, 23, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (37, '2024-01-04', '8:01 PM', 22, 2, 10, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (38, '2024-01-01', '8:39 PM', 25, 2, 5, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (39, '2024-01-02', '8:27 PM', 22, 1, 13, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (40, '2024-01-02', '6:11 PM', 14, 3, 6, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (41, '2024-01-04', '6:17 PM', 24, 2, 14, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (42, '2024-01-02', '8:03 PM', 10, 1, 6, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (43, '2024-01-02', '6:33 PM', 25, 3, 19, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (44, '2024-01-03', '6:08 PM', 21, 1, 13, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (45, '2024-01-02', '6:52 PM', 22, 2, 21, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (46, '2024-01-03', '9:54 PM', 24, 2, 13, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (47, '2024-01-03', '7:27 PM', 12, 3, 2, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (48, '2024-01-01', '7:09 PM', 19, 3, 18, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (49, '2024-01-04', '8:52 PM', 2, 3, 9, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (50, '2024-01-05', '9:58 PM', 22, 2, 1, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (51, '2024-01-02', '5:01 PM', 9, 2, 24, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (52, '2024-01-03', '9:36 PM', 21, 3, 7, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (53, '2024-01-01', '7:34 PM', 5, 3, 22, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (54, '2024-01-04', '9:55 PM', 4, 2, 2, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (55, '2024-01-04', '6:22 PM', 17, 2, 12, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (56, '2024-01-05', '7:15 PM', 3, 3, 10, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (57, '2024-01-03', '6:06 PM', 21, 2, 21, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (58, '2024-01-03', '7:14 PM', 12, 2, 17, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (59, '2024-01-05', '9:53 PM', 21, 1, 4, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (60, '2024-01-02', '7:03 PM', 5, 2, 15, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (61, '2024-01-01', '8:38 PM', 25, 2, 14, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (62, '2024-01-04', '8:37 PM', 4, 2, 17, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (63, '2024-01-04', '9:53 PM', 4, 3, 15, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (64, '2024-01-04', '8:02 PM', 23, 1, 17, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (65, '2024-01-04', '6:13 PM', 2, 1, 18, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (66, '2024-01-02', '5:24 PM', 22, 3, 10, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (67, '2024-01-01', '6:41 PM', 9, 2, 17, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (68, '2024-01-04', '5:21 PM', 6, 3, 11, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (69, '2024-01-01', '8:01 PM', 15, 1, 16, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (70, '2024-01-04', '6:23 PM', 4, 2, 2, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (71, '2024-01-05', '6:47 PM', 20, 2, 21, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (72, '2024-01-05', '7:50 PM', 3, 2, 5, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (73, '2024-01-02', '6:28 PM', 4, 1, 9, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (74, '2024-01-02', '9:45 PM', 16, 3, 21, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (75, '2024-01-02', '7:13 PM', 21, 3, 20, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (76, '2024-01-04', '8:43 PM', 10, 2, 18, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (77, '2024-01-01', '9:00 PM', 13, 3, 11, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (78, '2024-01-01', '8:56 PM', 4, 2, 23, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (79, '2024-01-05', '8:48 PM', 17, 2, 10, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (80, '2024-01-01', '6:10 PM', 15, 3, 24, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (81, '2024-01-03', '9:33 PM', 14, 1, 21, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (82, '2024-01-03', '9:21 PM', 9, 3, 10, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (83, '2024-01-01', '6:34 PM', 15, 3, 2, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (84, '2024-01-03', '6:43 PM', 10, 1, 1, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (85, '2024-01-04', '5:41 PM', 14, 2, 8, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (86, '2024-01-05', '9:24 PM', 7, 2, 2, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (87, '2024-01-05', '7:19 PM', 19, 1, 8, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (88, '2024-01-04', '7:59 PM', 12, 1, 24, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (89, '2024-01-02', '9:00 PM', 10, 3, 22, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (90, '2024-01-03', '9:09 PM', 10, 2, 2, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (91, '2024-01-03', '8:15 PM', 8, 1, 18, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (92, '2024-01-04', '7:23 PM', 22, 1, 22, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (93, '2024-01-02', '7:14 PM', 2, 3, 16, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (94, '2024-01-05', '9:45 PM', 3, 1, 6, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (95, '2024-01-02', '9:35 PM', 6, 2, 17, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (96, '2024-01-05', '7:49 PM', 25, 1, 16, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (97, '2024-01-02', '5:37 PM', 14, 1, 5, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (98, '2024-01-01', '8:21 PM', 9, 2, 12, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (99, '2024-01-03', '8:11 PM', 4, 1, 1, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (100, '2024-01-05', '9:48 PM', 15, 2, 10, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (101, '2024-01-04', '6:08 PM', 13, 1, 12, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (102, '2024-01-02', '8:35 PM', 23, 2, 11, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (103, '2024-01-05', '9:06 PM', 25, 1, 10, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (104, '2024-01-05', '9:30 PM', 19, 2, 20, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (105, '2024-01-01', '7:45 PM', 10, 1, 23, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (106, '2024-01-03', '6:57 PM', 10, 3, 24, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (107, '2024-01-04', '5:00 PM', 15, 3, 14, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (108, '2024-01-04', '7:15 PM', 2, 3, 2, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (109, '2024-01-01', '8:30 PM', 6, 3, 8, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (110, '2024-01-03', '7:05 PM', 18, 1, 6, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (111, '2024-01-02', '8:38 PM', 20, 3, 7, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (112, '2024-01-04', '7:25 PM', 22, 1, 11, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (113, '2024-01-02', '5:34 PM', 23, 2, 20, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (114, '2024-01-03', '6:38 PM', 1, 1, 1, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (115, '2024-01-01', '7:29 PM', 11, 3, 5, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (116, '2024-01-04', '6:35 PM', 3, 3, 1, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (117, '2024-01-02', '6:51 PM', 12, 3, 6, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (118, '2024-01-04', '5:39 PM', 23, 2, 3, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (119, '2024-01-03', '7:58 PM', 15, 3, 6, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (120, '2024-01-03', '5:53 PM', 20, 1, 9, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (121, '2024-01-03', '5:21 PM', 1, 2, 18, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (122, '2024-01-03', '5:55 PM', 9, 3, 21, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (123, '2024-01-03', '5:38 PM', 18, 2, 24, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (124, '2024-01-01', '9:23 PM', 20, 1, 9, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (125, '2024-01-03', '6:38 PM', 12, 3, 18, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (126, '2024-01-05', '6:32 PM', 3, 2, 9, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (127, '2024-01-01', '9:37 PM', 12, 1, 11, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (128, '2024-01-02', '8:31 PM', 18, 2, 13, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (129, '2024-01-05', '7:13 PM', 23, 2, 20, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (130, '2024-01-02', '6:51 PM', 1, 3, 7, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (131, '2024-01-05', '9:48 PM', 7, 1, 7, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (132, '2024-01-04', '8:19 PM', 15, 3, 18, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (133, '2024-01-01', '8:54 PM', 21, 3, 5, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (134, '2024-01-05', '8:49 PM', 9, 2, 8, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (135, '2024-01-01', '5:40 PM', 5, 2, 21, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (136, '2024-01-01', '6:07 PM', 13, 1, 13, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (137, '2024-01-05', '6:20 PM', 3, 3, 7, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (138, '2024-01-05', '6:13 PM', 25, 3, 19, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (139, '2024-01-04', '5:45 PM', 16, 3, 19, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (140, '2024-01-05', '5:50 PM', 10, 3, 12, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (141, '2024-01-05', '7:43 PM', 12, 3, 7, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (142, '2024-01-02', '8:10 PM', 16, 1, 20, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (143, '2024-01-04', '5:35 PM', 14, 3, 10, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (144, '2024-01-05', '5:45 PM', 3, 2, 20, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (145, '2024-01-01', '7:39 PM', 3, 2, 6, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (146, '2024-01-03', '9:44 PM', 2, 2, 21, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (147, '2024-01-02', '9:31 PM', 4, 2, 5, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (148, '2024-01-03', '8:18 PM', 21, 3, 14, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (149, '2024-01-05', '7:48 PM', 11, 1, 18, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (150, '2024-01-05', '5:11 PM', 22, 2, 19, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (151, '2024-01-04', '8:35 PM', 22, 3, 9, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (152, '2024-01-01', '6:49 PM', 24, 2, 14, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (153, '2024-01-04', '8:42 PM', 5, 3, 4, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (154, '2024-01-04', '9:43 PM', 23, 3, 17, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (155, '2024-01-01', '8:37 PM', 22, 2, 12, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (156, '2024-01-04', '5:56 PM', 2, 2, 9, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (157, '2024-01-04', '6:15 PM', 6, 2, 6, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (158, '2024-01-02', '9:27 PM', 1, 3, 19, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (159, '2024-01-02', '9:27 PM', 10, 3, 19, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (160, '2024-01-01', '9:30 PM', 13, 1, 14, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (161, '2024-01-02', '8:25 PM', 21, 2, 5, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (162, '2024-01-04', '6:03 PM', 12, 1, 15, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (163, '2024-01-01', '7:34 PM', 15, 2, 20, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (164, '2024-01-01', '7:28 PM', 14, 3, 18, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (165, '2024-01-02', '9:39 PM', 8, 2, 13, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (166, '2024-01-05', '8:58 PM', 23, 2, 15, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (167, '2024-01-01', '8:33 PM', 6, 3, 1, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (168, '2024-01-05', '7:53 PM', 1, 3, 18, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (169, '2024-01-04', '6:58 PM', 7, 1, 18, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (170, '2024-01-05', '9:56 PM', 15, 2, 2, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (171, '2024-01-02', '5:33 PM', 4, 3, 19, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (172, '2024-01-02', '6:31 PM', 17, 2, 24, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (173, '2024-01-04', '6:30 PM', 20, 1, 15, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (174, '2024-01-02', '8:01 PM', 5, 1, 13, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (175, '2024-01-05', '5:41 PM', 22, 2, 12, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (176, '2024-01-01', '8:12 PM', 15, 2, 23, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (177, '2024-01-03', '5:15 PM', 12, 1, 15, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (178, '2024-01-05', '7:16 PM', 19, 1, 22, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (179, '2024-01-03', '8:10 PM', 12, 1, 16, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (180, '2024-01-05', '6:40 PM', 21, 3, 22, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (181, '2024-01-04', '6:49 PM', 20, 3, 23, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (182, '2024-01-03', '5:21 PM', 19, 2, 22, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (183, '2024-01-01', '6:35 PM', 21, 3, 7, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (184, '2024-01-01', '9:43 PM', 11, 3, 16, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (185, '2024-01-03', '7:17 PM', 21, 1, 3, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (186, '2024-01-05', '8:59 PM', 13, 3, 14, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (187, '2024-01-01', '8:16 PM', 8, 2, 20, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (188, '2024-01-05', '5:09 PM', 16, 2, 18, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (189, '2024-01-02', '5:55 PM', 8, 1, 15, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (190, '2024-01-01', '8:31 PM', 14, 3, 2, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (191, '2024-01-02', '7:41 PM', 23, 3, 3, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (192, '2024-01-05', '7:00 PM', 21, 1, 24, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (193, '2024-01-05', '5:47 PM', 17, 1, 1, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (194, '2024-01-04', '5:46 PM', 23, 2, 23, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (195, '2024-01-04', '5:43 PM', 8, 1, 7, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (196, '2024-01-04', '9:19 PM', 1, 3, 14, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (197, '2024-01-04', '9:45 PM', 1, 1, 19, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (198, '2024-01-04', '9:23 PM', 25, 2, 16, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (199, '2024-01-01', '5:21 PM', 20, 1, 15, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (200, '2024-01-02', '9:46 PM', 10, 2, 18, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (201, '2024-01-03', '6:36 PM', 12, 2, 9, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (202, '2024-01-01', '6:40 PM', 21, 3, 5, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (203, '2024-01-04', '9:29 PM', 24, 1, 9, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (204, '2024-01-05', '6:56 PM', 22, 1, 5, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (205, '2024-01-05', '8:12 PM', 21, 1, 21, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (206, '2024-01-03', '7:24 PM', 21, 2, 6, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (207, '2024-01-05', '8:20 PM', 14, 3, 19, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (208, '2024-01-02', '5:50 PM', 22, 2, 10, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (209, '2024-01-01', '9:40 PM', 25, 2, 2, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (210, '2024-01-05', '9:15 PM', 3, 3, 6, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (211, '2024-01-03', '9:29 PM', 8, 1, 10, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (212, '2024-01-03', '6:35 PM', 5, 2, 8, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (213, '2024-01-04', '8:07 PM', 20, 1, 7, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (214, '2024-01-01', '6:40 PM', 10, 1, 12, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (215, '2024-01-04', '5:47 PM', 20, 3, 18, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (216, '2024-01-04', '5:10 PM', 21, 2, 4, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (217, '2024-01-04', '5:01 PM', 14, 2, 15, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (218, '2024-01-04', '7:35 PM', 20, 1, 19, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (219, '2024-01-02', '6:32 PM', 19, 3, 21, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (220, '2024-01-02', '9:04 PM', 9, 2, 1, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (221, '2024-01-05', '8:40 PM', 15, 2, 4, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (222, '2024-01-05', '9:36 PM', 13, 2, 20, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (223, '2024-01-02', '6:31 PM', 25, 2, 7, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (224, '2024-01-01', '8:46 PM', 13, 1, 21, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (225, '2024-01-01', '6:30 PM', 22, 2, 14, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (226, '2024-01-04', '9:19 PM', 2, 2, 16, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (227, '2024-01-02', '9:46 PM', 25, 2, 5, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (228, '2024-01-02', '5:11 PM', 9, 2, 5, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (229, '2024-01-04', '9:31 PM', 18, 3, 23, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (230, '2024-01-02', '9:18 PM', 11, 1, 2, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (231, '2024-01-05', '6:11 PM', 4, 2, 18, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (232, '2024-01-01', '9:35 PM', 24, 1, 8, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (233, '2024-01-03', '6:04 PM', 2, 2, 4, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (234, '2024-01-01', '8:33 PM', 15, 3, 2, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (235, '2024-01-05', '5:05 PM', 1, 1, 24, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (236, '2024-01-04', '7:50 PM', 6, 3, 17, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (237, '2024-01-02', '9:02 PM', 11, 2, 2, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (238, '2024-01-02', '8:54 PM', 8, 3, 18, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (239, '2024-01-03', '8:14 PM', 9, 2, 8, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (240, '2024-01-01', '6:14 PM', 4, 2, 19, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (241, '2024-01-03', '8:30 PM', 20, 1, 21, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (242, '2024-01-02', '6:06 PM', 10, 1, 17, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (243, '2024-01-05', '5:49 PM', 17, 2, 15, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (244, '2024-01-04', '6:41 PM', 1, 3, 17, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (245, '2024-01-05', '7:34 PM', 12, 1, 9, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (246, '2024-01-02', '9:12 PM', 1, 2, 14, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (247, '2024-01-01', '7:51 PM', 4, 2, 10, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (248, '2024-01-04', '9:28 PM', 8, 2, 24, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (249, '2024-01-03', '8:22 PM', 17, 2, 12, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (250, '2024-01-03', '9:44 PM', 6, 2, 6, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (251, '2024-01-03', '6:10 PM', 9, 1, 14, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (252, '2024-01-03', '8:04 PM', 6, 2, 4, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (253, '2024-01-05', '9:50 PM', 3, 3, 7, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (254, '2024-01-03', '7:09 PM', 25, 3, 14, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (255, '2024-01-01', '8:43 PM', 23, 3, 2, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (256, '2024-01-05', '5:07 PM', 7, 1, 1, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (257, '2024-01-03', '5:44 PM', 7, 3, 1, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (258, '2024-01-03', '7:46 PM', 17, 3, 7, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (259, '2024-01-04', '6:32 PM', 10, 3, 20, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (260, '2024-01-01', '6:54 PM', 10, 3, 21, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (261, '2024-01-05', '7:01 PM', 24, 2, 15, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (262, '2024-01-01', '9:48 PM', 6, 2, 10, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (263, '2024-01-02', '7:38 PM', 21, 2, 18, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (264, '2024-01-01', '9:09 PM', 15, 2, 20, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (265, '2024-01-01', '8:53 PM', 15, 2, 6, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (266, '2024-01-04', '8:43 PM', 13, 1, 8, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (267, '2024-01-05', '5:22 PM', 16, 2, 22, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (268, '2024-01-01', '6:23 PM', 5, 1, 6, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (269, '2024-01-04', '5:13 PM', 18, 1, 16, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (270, '2024-01-03', '6:08 PM', 23, 1, 12, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (271, '2024-01-03', '9:11 PM', 5, 2, 19, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (272, '2024-01-05', '5:21 PM', 2, 1, 11, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (273, '2024-01-05', '7:59 PM', 9, 3, 19, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (274, '2024-01-01', '9:21 PM', 5, 2, 12, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (275, '2024-01-03', '6:56 PM', 12, 3, 19, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (276, '2024-01-03', '9:56 PM', 4, 3, 7, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (277, '2024-01-01', '7:31 PM', 12, 1, 20, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (278, '2024-01-04', '8:53 PM', 23, 2, 7, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (279, '2024-01-01', '9:03 PM', 16, 2, 14, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (280, '2024-01-04', '7:05 PM', 7, 2, 15, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (281, '2024-01-02', '8:14 PM', 22, 3, 6, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (282, '2024-01-04', '9:44 PM', 20, 1, 2, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (283, '2024-01-03', '7:41 PM', 19, 3, 4, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (284, '2024-01-02', '8:33 PM', 2, 3, 18, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (285, '2024-01-02', '7:46 PM', 23, 2, 13, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (286, '2024-01-01', '7:33 PM', 4, 1, 24, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (287, '2024-01-01', '5:40 PM', 15, 2, 4, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (288, '2024-01-03', '5:22 PM', 10, 2, 2, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (289, '2024-01-01', '8:53 PM', 21, 2, 19, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (290, '2024-01-04', '9:03 PM', 6, 2, 3, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (291, '2024-01-05', '5:56 PM', 16, 3, 5, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (292, '2024-01-02', '5:55 PM', 18, 1, 8, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (293, '2024-01-03', '9:51 PM', 6, 3, 17, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (294, '2024-01-04', '7:48 PM', 13, 3, 17, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (295, '2024-01-03', '7:33 PM', 18, 1, 14, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (296, '2024-01-01', '8:21 PM', 10, 1, 12, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (297, '2024-01-05', '5:04 PM', 10, 2, 20, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (298, '2024-01-05', '8:52 PM', 17, 1, 23, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (299, '2024-01-04', '5:21 PM', 13, 2, 20, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, AmountOfTablesBooked, TableID, CustomerID, RestaurantID) values (300, '2024-01-03', '7:01 PM', 22, 2, 2, 5, 2);







-- tasks

-- Get a list of all tables in the restaurant
SELECT *
FROM `Table`;


-- Get a list of all bookings for a given customer ordered by date
SELECT  c.FirstName, c.LastName, 
tb.BookingDate, tb.BookingTime, tb.NumberOfGuests,
t.TableNumber
FROM TableBooking tb
JOIN Customer c ON tb.CustomerID = c.CustomerID
JOIN `Table` t ON tb.TableID = t.TableID
WHERE tb.CustomerID = 1
ORDER BY tb.BookingDate ASC,
    tb.BookingTime ASC;


-- -- Get a list of all bookings for a given tableID, including the customers for a specific date
SELECT  c.FirstName, c.LastName,
tb.BookingDate, tb.BookingTime, tb.NumberOfGuests,
t.TableNumber
FROM TableBooking tb
JOIN Customer c ON tb.CustomerID = c.CustomerID
JOIN `Table` t ON tb.TableID = t.TableID
WHERE tb.TableID = 1
AND tb.BookingDate = '2024-01-05'
ORDER BY tb.BookingTime ASC;

