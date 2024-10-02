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
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (1, '2024-01-05', '10:07 PM', 2, 1, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (2, '2024-01-01', '5:58 PM', 3, 21, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (3, '2024-01-03', '9:38 PM', 1, 9, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (4, '2024-01-05', '10:54 PM', 5, 8, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (5, '2024-01-01', '5:18 PM', 6, 8, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (6, '2024-01-02', '9:47 PM', 3, 18, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (7, '2024-01-01', '9:23 PM', 6, 3, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (8, '2024-01-05', '9:27 PM', 7, 21, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (9, '2024-01-05', '8:06 PM', 7, 15, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (10, '2024-01-05', '7:02 PM', 3, 11, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (11, '2024-01-01', '5:01 PM', 5, 22, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (12, '2024-01-03', '8:07 PM', 4, 2, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (13, '2024-01-01', '5:34 PM', 8, 13, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (14, '2024-01-01', '6:06 PM', 1, 13, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (15, '2024-01-03', '6:43 PM', 7, 19, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (16, '2024-01-01', '5:02 PM', 7, 6, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (17, '2024-01-01', '5:53 PM', 5, 8, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (18, '2024-01-03', '6:59 PM', 6, 2, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (19, '2024-01-02', '10:22 PM', 3, 13, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (20, '2024-01-01', '9:20 PM', 2, 24, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (21, '2024-01-01', '6:25 PM', 7, 2, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (22, '2024-01-03', '8:14 PM', 5, 16, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (23, '2024-01-01', '9:29 PM', 6, 8, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (24, '2024-01-03', '6:06 PM', 7, 17, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (25, '2024-01-01', '7:46 PM', 1, 14, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (26, '2024-01-04', '7:27 PM', 2, 14, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (27, '2024-01-04', '7:19 PM', 8, 11, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (28, '2024-01-03', '10:38 PM', 7, 24, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (29, '2024-01-04', '6:49 PM', 7, 3, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (30, '2024-01-04', '6:59 PM', 6, 9, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (31, '2024-01-04', '7:15 PM', 6, 6, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (32, '2024-01-03', '7:37 PM', 7, 15, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (33, '2024-01-02', '8:44 PM', 9, 4, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (34, '2024-01-05', '7:32 PM', 1, 15, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (35, '2024-01-03', '5:53 PM', 8, 13, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (36, '2024-01-01', '8:30 PM', 7, 22, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (37, '2024-01-04', '8:32 PM', 5, 21, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (38, '2024-01-05', '5:38 PM', 9, 21, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (39, '2024-01-05', '10:41 PM', 2, 13, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (40, '2024-01-05', '9:25 PM', 3, 21, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (41, '2024-01-02', '9:44 PM', 6, 19, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (42, '2024-01-05', '6:47 PM', 5, 8, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (43, '2024-01-03', '10:43 PM', 2, 21, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (44, '2024-01-02', '9:20 PM', 4, 4, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (45, '2024-01-01', '10:45 PM', 8, 12, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (46, '2024-01-03', '9:36 PM', 9, 13, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (47, '2024-01-03', '9:17 PM', 9, 14, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (48, '2024-01-02', '10:25 PM', 9, 2, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (49, '2024-01-03', '5:21 PM', 5, 6, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (50, '2024-01-05', '8:46 PM', 4, 2, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (51, '2024-01-02', '8:28 PM', 7, 14, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (52, '2024-01-01', '8:06 PM', 8, 8, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (53, '2024-01-05', '7:58 PM', 8, 24, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (54, '2024-01-02', '6:17 PM', 4, 16, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (55, '2024-01-04', '8:07 PM', 2, 6, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (56, '2024-01-01', '8:09 PM', 5, 16, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (57, '2024-01-04', '8:41 PM', 4, 13, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (58, '2024-01-01', '7:50 PM', 3, 8, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (59, '2024-01-02', '5:26 PM', 7, 20, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (60, '2024-01-04', '10:31 PM', 4, 15, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (61, '2024-01-03', '6:31 PM', 6, 12, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (62, '2024-01-04', '6:17 PM', 6, 3, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (63, '2024-01-03', '10:20 PM', 9, 17, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (64, '2024-01-01', '7:56 PM', 5, 11, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (65, '2024-01-05', '7:46 PM', 1, 17, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (66, '2024-01-04', '6:14 PM', 1, 10, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (67, '2024-01-02', '8:37 PM', 2, 24, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (68, '2024-01-02', '8:26 PM', 6, 24, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (69, '2024-01-05', '6:43 PM', 1, 5, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (70, '2024-01-04', '5:52 PM', 9, 14, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (71, '2024-01-05', '7:08 PM', 8, 5, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (72, '2024-01-01', '9:58 PM', 3, 18, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (73, '2024-01-03', '8:59 PM', 4, 7, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (74, '2024-01-03', '8:55 PM', 6, 22, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (75, '2024-01-05', '7:53 PM', 7, 16, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (76, '2024-01-04', '6:14 PM', 4, 14, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (77, '2024-01-01', '10:53 PM', 5, 19, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (78, '2024-01-02', '8:49 PM', 7, 3, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (79, '2024-01-02', '8:13 PM', 6, 1, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (80, '2024-01-01', '5:27 PM', 9, 18, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (81, '2024-01-02', '6:01 PM', 7, 21, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (82, '2024-01-02', '7:59 PM', 7, 19, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (83, '2024-01-01', '10:05 PM', 9, 24, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (84, '2024-01-02', '8:55 PM', 4, 18, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (85, '2024-01-03', '10:59 PM', 4, 13, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (86, '2024-01-04', '8:05 PM', 3, 10, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (87, '2024-01-03', '8:20 PM', 3, 4, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (88, '2024-01-03', '7:00 PM', 5, 23, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (89, '2024-01-04', '7:51 PM', 4, 21, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (90, '2024-01-01', '10:36 PM', 2, 12, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (91, '2024-01-03', '5:09 PM', 3, 18, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (92, '2024-01-04', '8:37 PM', 9, 24, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (93, '2024-01-01', '8:18 PM', 1, 3, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (94, '2024-01-05', '5:26 PM', 4, 5, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (95, '2024-01-03', '7:03 PM', 9, 19, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (96, '2024-01-04', '5:47 PM', 2, 9, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (97, '2024-01-03', '6:17 PM', 4, 10, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (98, '2024-01-03', '6:54 PM', 5, 1, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (99, '2024-01-05', '7:28 PM', 9, 19, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (100, '2024-01-03', '6:02 PM', 6, 16, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (101, '2024-01-05', '7:04 PM', 1, 14, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (102, '2024-01-04', '8:46 PM', 8, 5, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (103, '2024-01-05', '5:28 PM', 5, 4, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (104, '2024-01-03', '6:10 PM', 1, 7, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (105, '2024-01-03', '6:37 PM', 3, 18, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (106, '2024-01-05', '6:45 PM', 5, 20, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (107, '2024-01-04', '8:15 PM', 5, 4, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (108, '2024-01-01', '7:56 PM', 2, 12, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (109, '2024-01-05', '9:38 PM', 2, 24, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (110, '2024-01-03', '9:49 PM', 7, 2, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (111, '2024-01-05', '6:58 PM', 7, 20, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (112, '2024-01-03', '7:43 PM', 2, 16, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (113, '2024-01-05', '5:20 PM', 3, 10, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (114, '2024-01-02', '7:06 PM', 9, 1, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (115, '2024-01-02', '8:58 PM', 9, 8, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (116, '2024-01-03', '8:42 PM', 7, 20, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (117, '2024-01-03', '7:59 PM', 9, 5, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (118, '2024-01-04', '6:34 PM', 6, 13, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (119, '2024-01-03', '5:16 PM', 4, 11, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (120, '2024-01-05', '9:12 PM', 2, 7, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (121, '2024-01-03', '9:17 PM', 6, 8, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (122, '2024-01-01', '5:37 PM', 1, 12, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (123, '2024-01-04', '10:36 PM', 9, 1, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (124, '2024-01-05', '8:10 PM', 7, 2, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (125, '2024-01-01', '7:13 PM', 1, 12, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (126, '2024-01-02', '10:02 PM', 3, 9, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (127, '2024-01-05', '5:18 PM', 3, 24, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (128, '2024-01-04', '6:27 PM', 6, 2, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (129, '2024-01-05', '5:08 PM', 5, 7, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (130, '2024-01-02', '5:53 PM', 2, 16, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (131, '2024-01-05', '8:09 PM', 4, 22, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (132, '2024-01-02', '6:25 PM', 4, 19, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (133, '2024-01-05', '8:54 PM', 6, 11, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (134, '2024-01-05', '10:37 PM', 1, 10, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (135, '2024-01-04', '7:51 PM', 6, 1, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (136, '2024-01-04', '10:28 PM', 8, 16, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (137, '2024-01-03', '9:37 PM', 5, 18, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (138, '2024-01-01', '7:58 PM', 5, 21, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (139, '2024-01-05', '10:39 PM', 4, 1, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (140, '2024-01-02', '5:51 PM', 7, 11, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (141, '2024-01-05', '9:59 PM', 6, 14, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (142, '2024-01-05', '6:23 PM', 3, 23, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (143, '2024-01-05', '10:30 PM', 4, 1, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (144, '2024-01-05', '10:37 PM', 3, 11, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (145, '2024-01-02', '7:21 PM', 6, 6, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (146, '2024-01-02', '9:19 PM', 4, 1, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (147, '2024-01-02', '5:44 PM', 5, 9, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (148, '2024-01-03', '6:33 PM', 6, 19, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (149, '2024-01-05', '10:25 PM', 8, 11, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (150, '2024-01-04', '8:06 PM', 6, 9, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (151, '2024-01-02', '7:16 PM', 4, 3, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (152, '2024-01-01', '9:20 PM', 3, 10, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (153, '2024-01-02', '10:21 PM', 1, 9, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (154, '2024-01-02', '5:23 PM', 6, 4, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (155, '2024-01-05', '9:43 PM', 3, 15, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (156, '2024-01-05', '7:06 PM', 3, 1, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (157, '2024-01-01', '7:35 PM', 6, 16, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (158, '2024-01-03', '9:28 PM', 4, 19, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (159, '2024-01-02', '9:47 PM', 4, 19, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (160, '2024-01-01', '7:04 PM', 5, 22, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (161, '2024-01-05', '9:28 PM', 3, 3, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (162, '2024-01-05', '9:33 PM', 5, 16, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (163, '2024-01-05', '7:07 PM', 9, 22, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (164, '2024-01-03', '7:13 PM', 3, 19, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (165, '2024-01-02', '8:11 PM', 4, 19, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (166, '2024-01-03', '8:57 PM', 3, 14, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (167, '2024-01-04', '8:41 PM', 9, 11, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (168, '2024-01-01', '7:09 PM', 3, 10, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (169, '2024-01-01', '7:30 PM', 7, 21, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (170, '2024-01-05', '10:29 PM', 9, 22, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (171, '2024-01-04', '6:20 PM', 3, 11, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (172, '2024-01-01', '8:24 PM', 9, 21, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (173, '2024-01-05', '5:52 PM', 4, 18, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (174, '2024-01-01', '7:54 PM', 6, 16, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (175, '2024-01-02', '7:27 PM', 8, 21, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (176, '2024-01-03', '8:57 PM', 2, 19, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (177, '2024-01-02', '10:33 PM', 9, 16, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (178, '2024-01-01', '9:42 PM', 8, 7, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (179, '2024-01-05', '5:53 PM', 3, 4, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (180, '2024-01-05', '9:46 PM', 9, 11, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (181, '2024-01-03', '7:02 PM', 7, 12, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (182, '2024-01-05', '6:18 PM', 6, 23, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (183, '2024-01-05', '9:38 PM', 6, 20, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (184, '2024-01-01', '9:49 PM', 5, 2, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (185, '2024-01-01', '9:27 PM', 4, 8, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (186, '2024-01-05', '8:11 PM', 3, 3, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (187, '2024-01-03', '6:48 PM', 4, 24, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (188, '2024-01-04', '6:03 PM', 9, 9, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (189, '2024-01-01', '7:06 PM', 6, 14, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (190, '2024-01-05', '7:44 PM', 5, 24, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (191, '2024-01-01', '7:04 PM', 2, 9, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (192, '2024-01-02', '10:31 PM', 4, 4, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (193, '2024-01-05', '7:33 PM', 6, 14, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (194, '2024-01-02', '5:49 PM', 9, 2, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (195, '2024-01-05', '8:59 PM', 4, 4, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (196, '2024-01-02', '8:18 PM', 4, 7, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (197, '2024-01-02', '7:43 PM', 1, 17, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (198, '2024-01-04', '8:27 PM', 5, 4, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (199, '2024-01-04', '9:30 PM', 2, 8, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (200, '2024-01-05', '6:35 PM', 6, 19, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (201, '2024-01-05', '6:26 PM', 6, 2, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (202, '2024-01-01', '8:47 PM', 7, 16, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (203, '2024-01-05', '9:56 PM', 2, 20, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (204, '2024-01-01', '5:04 PM', 4, 22, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (205, '2024-01-01', '5:24 PM', 3, 18, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (206, '2024-01-01', '9:01 PM', 5, 16, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (207, '2024-01-04', '8:46 PM', 4, 11, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (208, '2024-01-05', '7:36 PM', 7, 22, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (209, '2024-01-01', '9:22 PM', 5, 23, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (210, '2024-01-03', '5:06 PM', 7, 22, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (211, '2024-01-02', '7:27 PM', 4, 10, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (212, '2024-01-02', '8:03 PM', 5, 3, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (213, '2024-01-05', '9:15 PM', 3, 13, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (214, '2024-01-04', '6:00 PM', 4, 18, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (215, '2024-01-05', '10:08 PM', 6, 1, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (216, '2024-01-03', '8:04 PM', 9, 2, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (217, '2024-01-05', '5:48 PM', 1, 16, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (218, '2024-01-05', '6:56 PM', 2, 9, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (219, '2024-01-05', '10:08 PM', 3, 20, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (220, '2024-01-04', '8:16 PM', 5, 18, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (221, '2024-01-03', '6:40 PM', 8, 17, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (222, '2024-01-05', '8:35 PM', 4, 19, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (223, '2024-01-05', '6:24 PM', 9, 2, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (224, '2024-01-04', '5:07 PM', 1, 16, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (225, '2024-01-04', '7:22 PM', 3, 8, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (226, '2024-01-04', '6:05 PM', 2, 5, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (227, '2024-01-02', '7:13 PM', 7, 1, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (228, '2024-01-04', '6:30 PM', 3, 18, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (229, '2024-01-02', '6:38 PM', 5, 7, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (230, '2024-01-04', '8:44 PM', 5, 14, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (231, '2024-01-05', '5:52 PM', 2, 17, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (232, '2024-01-03', '8:23 PM', 8, 14, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (233, '2024-01-05', '5:48 PM', 3, 8, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (234, '2024-01-05', '8:58 PM', 5, 11, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (235, '2024-01-03', '5:18 PM', 9, 18, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (236, '2024-01-02', '6:01 PM', 3, 8, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (237, '2024-01-02', '8:33 PM', 9, 18, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (238, '2024-01-05', '5:58 PM', 3, 12, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (239, '2024-01-02', '9:51 PM', 6, 5, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (240, '2024-01-03', '10:32 PM', 1, 14, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (241, '2024-01-03', '8:50 PM', 8, 13, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (242, '2024-01-05', '6:23 PM', 7, 23, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (243, '2024-01-03', '8:42 PM', 2, 17, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (244, '2024-01-03', '8:13 PM', 5, 3, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (245, '2024-01-05', '5:17 PM', 4, 24, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (246, '2024-01-03', '8:40 PM', 5, 14, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (247, '2024-01-04', '8:27 PM', 9, 17, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (248, '2024-01-04', '7:14 PM', 9, 11, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (249, '2024-01-01', '10:54 PM', 8, 24, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (250, '2024-01-01', '6:50 PM', 5, 12, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (251, '2024-01-05', '7:33 PM', 6, 10, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (252, '2024-01-02', '8:41 PM', 5, 8, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (253, '2024-01-03', '6:35 PM', 6, 8, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (254, '2024-01-01', '9:30 PM', 7, 1, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (255, '2024-01-04', '5:28 PM', 8, 1, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (256, '2024-01-04', '10:07 PM', 2, 13, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (257, '2024-01-04', '5:57 PM', 3, 8, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (258, '2024-01-02', '6:39 PM', 1, 20, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (259, '2024-01-05', '8:10 PM', 3, 19, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (260, '2024-01-01', '5:06 PM', 1, 18, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (261, '2024-01-05', '5:30 PM', 1, 20, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (262, '2024-01-02', '5:28 PM', 2, 24, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (263, '2024-01-04', '5:26 PM', 2, 21, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (264, '2024-01-01', '6:32 PM', 5, 7, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (265, '2024-01-03', '8:03 PM', 1, 23, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (266, '2024-01-03', '7:32 PM', 1, 1, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (267, '2024-01-04', '5:48 PM', 8, 11, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (268, '2024-01-01', '9:39 PM', 5, 15, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (269, '2024-01-04', '6:18 PM', 7, 6, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (270, '2024-01-01', '5:55 PM', 4, 14, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (271, '2024-01-04', '7:17 PM', 3, 20, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (272, '2024-01-05', '9:50 PM', 7, 11, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (273, '2024-01-04', '10:48 PM', 1, 10, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (274, '2024-01-03', '9:00 PM', 2, 3, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (275, '2024-01-03', '9:04 PM', 1, 19, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (276, '2024-01-01', '6:29 PM', 6, 9, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (277, '2024-01-03', '10:31 PM', 4, 10, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (278, '2024-01-01', '6:09 PM', 7, 23, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (279, '2024-01-01', '8:02 PM', 1, 20, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (280, '2024-01-05', '8:29 PM', 9, 2, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (281, '2024-01-04', '7:35 PM', 4, 17, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (282, '2024-01-01', '9:28 PM', 3, 2, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (283, '2024-01-01', '6:11 PM', 4, 15, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (284, '2024-01-03', '7:08 PM', 8, 15, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (285, '2024-01-05', '10:45 PM', 3, 10, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (286, '2024-01-05', '10:59 PM', 8, 1, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (287, '2024-01-01', '7:24 PM', 6, 24, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (288, '2024-01-03', '5:21 PM', 1, 4, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (289, '2024-01-02', '8:46 PM', 6, 16, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (290, '2024-01-04', '9:34 PM', 2, 5, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (291, '2024-01-03', '8:40 PM', 4, 2, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (292, '2024-01-05', '5:46 PM', 8, 5, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (293, '2024-01-05', '9:01 PM', 1, 23, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (294, '2024-01-05', '9:27 PM', 1, 24, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (295, '2024-01-04', '10:48 PM', 4, 3, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (296, '2024-01-02', '10:29 PM', 9, 9, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (297, '2024-01-02', '9:38 PM', 5, 10, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (298, '2024-01-03', '6:37 PM', 3, 15, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (299, '2024-01-04', '10:00 PM', 7, 8, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (300, '2024-01-02', '6:07 PM', 5, 24, 1, 1);







-- opgaver

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

