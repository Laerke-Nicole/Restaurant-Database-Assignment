  DROP DATABASE IF EXISTS RestaurantDB;
  CREATE DATABASE RestaurantDB;
  USE RestaurantDB;

-- Table with postal code
  CREATE TABLE PostalCode (
    PostalCode varchar(20) NOT NULL PRIMARY KEY,
    City varchar(168)
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


-- Table with tables
  CREATE TABLE `Table` (
    TableID int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    TableNumber int(60),
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
insert into `Table` (TableID, TableNumber) values (1, 7);
insert into `Table` (TableID, TableNumber) values (2, 39);
insert into `Table` (TableID, TableNumber) values (3, 36);
insert into `Table` (TableID, TableNumber) values (4, 25);
insert into `Table` (TableID, TableNumber) values (5, 24);
insert into `Table` (TableID, TableNumber) values (6, 23);
insert into `Table` (TableID, TableNumber) values (7, 7);
insert into `Table` (TableID, TableNumber) values (8, 36);
insert into `Table` (TableID, TableNumber) values (9, 57);
insert into `Table` (TableID, TableNumber) values (10, 42);
insert into `Table` (TableID, TableNumber) values (11, 19);
insert into `Table` (TableID, TableNumber) values (12, 23);
insert into `Table` (TableID, TableNumber) values (13, 20);
insert into `Table` (TableID, TableNumber) values (14, 31);
insert into `Table` (TableID, TableNumber) values (15, 41);
insert into `Table` (TableID, TableNumber) values (16, 5);
insert into `Table` (TableID, TableNumber) values (17, 45);
insert into `Table` (TableID, TableNumber) values (18, 25);
insert into `Table` (TableID, TableNumber) values (19, 32);
insert into `Table` (TableID, TableNumber) values (20, 31);
insert into `Table` (TableID, TableNumber) values (21, 29);
insert into `Table` (TableID, TableNumber) values (22, 44);
insert into `Table` (TableID, TableNumber) values (23, 14);
insert into `Table` (TableID, TableNumber) values (24, 38);
insert into `Table` (TableID, TableNumber) values (25, 4);
insert into `Table` (TableID, TableNumber) values (26, 12);
insert into `Table` (TableID, TableNumber) values (27, 60);
insert into `Table` (TableID, TableNumber) values (28, 51);
insert into `Table` (TableID, TableNumber) values (29, 45);
insert into `Table` (TableID, TableNumber) values (30, 32);
insert into `Table` (TableID, TableNumber) values (31, 33);
insert into `Table` (TableID, TableNumber) values (32, 60);
insert into `Table` (TableID, TableNumber) values (33, 38);
insert into `Table` (TableID, TableNumber) values (34, 48);
insert into `Table` (TableID, TableNumber) values (35, 25);
insert into `Table` (TableID, TableNumber) values (36, 20);
insert into `Table` (TableID, TableNumber) values (37, 49);
insert into `Table` (TableID, TableNumber) values (38, 21);
insert into `Table` (TableID, TableNumber) values (39, 55);
insert into `Table` (TableID, TableNumber) values (40, 58);
insert into `Table` (TableID, TableNumber) values (41, 49);
insert into `Table` (TableID, TableNumber) values (42, 26);
insert into `Table` (TableID, TableNumber) values (43, 19);
insert into `Table` (TableID, TableNumber) values (44, 29);
insert into `Table` (TableID, TableNumber) values (45, 57);
insert into `Table` (TableID, TableNumber) values (46, 29);
insert into `Table` (TableID, TableNumber) values (47, 14);
insert into `Table` (TableID, TableNumber) values (48, 48);
insert into `Table` (TableID, TableNumber) values (49, 56);
insert into `Table` (TableID, TableNumber) values (50, 16);
insert into `Table` (TableID, TableNumber) values (51, 7);
insert into `Table` (TableID, TableNumber) values (52, 38);
insert into `Table` (TableID, TableNumber) values (53, 5);
insert into `Table` (TableID, TableNumber) values (54, 17);
insert into `Table` (TableID, TableNumber) values (55, 53);
insert into `Table` (TableID, TableNumber) values (56, 47);
insert into `Table` (TableID, TableNumber) values (57, 42);
insert into `Table` (TableID, TableNumber) values (58, 35);
insert into `Table` (TableID, TableNumber) values (59, 43);
insert into `Table` (TableID, TableNumber) values (60, 32);


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
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (1, '2024-01-03', '8:27 PM', 15, 48, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (2, '2024-01-02', '7:32 PM', 8, 42, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (3, '2024-01-01', '8:40 PM', 19, 37, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (4, '2024-01-02', '9:23 PM', 21, 26, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (5, '2024-01-02', '7:12 PM', 21, 59, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (6, '2024-01-05', '6:04 PM', 8, 55, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (7, '2024-01-04', '8:40 PM', 14, 35, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (8, '2024-01-02', '8:36 PM', 6, 53, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (9, '2024-01-05', '6:33 PM', 21, 2, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (10, '2024-01-05', '6:17 PM', 7, 56, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (11, '2024-01-02', '8:42 PM', 10, 55, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (12, '2024-01-05', '9:24 PM', 25, 22, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (13, '2024-01-02', '7:08 PM', 21, 37, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (14, '2024-01-01', '9:23 PM', 9, 30, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (15, '2024-01-05', '5:54 PM', 11, 53, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (16, '2024-01-03', '8:47 PM', 19, 52, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (17, '2024-01-01', '9:57 PM', 15, 9, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (18, '2024-01-04', '6:15 PM', 7, 12, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (19, '2024-01-03', '6:48 PM', 17, 17, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (20, '2024-01-03', '6:24 PM', 9, 57, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (21, '2024-01-01', '7:10 PM', 8, 31, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (22, '2024-01-05', '8:20 PM', 25, 33, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (23, '2024-01-05', '8:02 PM', 21, 60, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (24, '2024-01-01', '5:17 PM', 10, 32, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (25, '2024-01-04', '8:47 PM', 14, 3, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (26, '2024-01-05', '8:00 PM', 23, 54, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (27, '2024-01-05', '6:26 PM', 22, 5, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (28, '2024-01-05', '8:56 PM', 10, 40, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (29, '2024-01-05', '9:30 PM', 7, 30, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (30, '2024-01-01', '7:24 PM', 9, 15, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (31, '2024-01-05', '8:40 PM', 3, 27, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (32, '2024-01-02', '9:16 PM', 4, 40, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (33, '2024-01-04', '5:34 PM', 19, 21, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (34, '2024-01-01', '8:12 PM', 9, 46, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (35, '2024-01-01', '8:09 PM', 19, 1, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (36, '2024-01-04', '5:50 PM', 5, 51, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (37, '2024-01-03', '9:12 PM', 17, 46, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (38, '2024-01-02', '9:36 PM', 8, 18, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (39, '2024-01-04', '6:32 PM', 4, 52, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (40, '2024-01-01', '9:13 PM', 8, 20, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (41, '2024-01-02', '6:42 PM', 21, 8, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (42, '2024-01-02', '5:56 PM', 24, 34, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (43, '2024-01-05', '8:37 PM', 8, 19, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (44, '2024-01-04', '8:00 PM', 13, 29, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (45, '2024-01-01', '5:15 PM', 14, 27, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (46, '2024-01-02', '7:42 PM', 21, 57, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (47, '2024-01-01', '5:43 PM', 2, 6, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (48, '2024-01-03', '7:37 PM', 19, 6, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (49, '2024-01-03', '6:19 PM', 14, 35, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (50, '2024-01-01', '8:55 PM', 4, 40, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (51, '2024-01-03', '8:44 PM', 16, 8, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (52, '2024-01-03', '7:17 PM', 23, 23, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (53, '2024-01-03', '8:36 PM', 10, 38, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (54, '2024-01-02', '7:42 PM', 4, 13, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (55, '2024-01-01', '7:12 PM', 7, 13, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (56, '2024-01-02', '5:30 PM', 7, 18, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (57, '2024-01-01', '7:46 PM', 14, 16, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (58, '2024-01-04', '9:30 PM', 20, 26, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (59, '2024-01-01', '9:59 PM', 13, 20, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (60, '2024-01-05', '9:18 PM', 18, 15, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (61, '2024-01-05', '5:59 PM', 5, 29, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (62, '2024-01-03', '5:19 PM', 13, 26, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (63, '2024-01-05', '9:18 PM', 13, 19, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (64, '2024-01-03', '6:17 PM', 11, 30, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (65, '2024-01-01', '6:54 PM', 23, 4, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (66, '2024-01-04', '8:56 PM', 25, 10, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (67, '2024-01-01', '8:38 PM', 21, 53, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (68, '2024-01-05', '6:37 PM', 16, 18, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (69, '2024-01-05', '6:52 PM', 3, 34, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (70, '2024-01-02', '6:23 PM', 18, 45, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (71, '2024-01-04', '7:09 PM', 10, 38, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (72, '2024-01-01', '6:52 PM', 9, 45, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (73, '2024-01-05', '6:03 PM', 7, 34, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (74, '2024-01-05', '7:02 PM', 12, 6, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (75, '2024-01-05', '7:39 PM', 13, 51, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (76, '2024-01-02', '5:53 PM', 8, 60, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (77, '2024-01-04', '5:55 PM', 14, 43, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (78, '2024-01-02', '8:47 PM', 3, 5, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (79, '2024-01-05', '8:46 PM', 22, 21, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (80, '2024-01-04', '6:59 PM', 16, 50, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (81, '2024-01-03', '7:40 PM', 15, 42, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (82, '2024-01-01', '8:18 PM', 5, 9, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (83, '2024-01-02', '5:49 PM', 24, 51, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (84, '2024-01-05', '9:29 PM', 24, 13, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (85, '2024-01-04', '8:31 PM', 4, 5, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (86, '2024-01-01', '5:38 PM', 18, 42, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (87, '2024-01-04', '7:28 PM', 9, 34, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (88, '2024-01-05', '8:00 PM', 3, 21, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (89, '2024-01-02', '9:21 PM', 8, 34, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (90, '2024-01-01', '6:51 PM', 10, 7, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (91, '2024-01-02', '8:13 PM', 8, 21, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (92, '2024-01-04', '6:55 PM', 2, 32, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (93, '2024-01-04', '8:22 PM', 5, 30, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (94, '2024-01-03', '9:19 PM', 25, 39, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (95, '2024-01-03', '8:52 PM', 18, 40, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (96, '2024-01-05', '8:07 PM', 22, 31, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (97, '2024-01-05', '5:23 PM', 23, 53, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (98, '2024-01-02', '5:31 PM', 14, 19, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (99, '2024-01-03', '9:26 PM', 25, 48, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (100, '2024-01-01', '8:49 PM', 5, 29, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (101, '2024-01-04', '7:20 PM', 21, 22, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (102, '2024-01-02', '6:47 PM', 19, 25, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (103, '2024-01-03', '8:18 PM', 3, 8, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (104, '2024-01-05', '6:47 PM', 24, 24, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (105, '2024-01-05', '5:09 PM', 17, 7, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (106, '2024-01-02', '7:43 PM', 20, 28, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (107, '2024-01-04', '7:45 PM', 20, 56, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (108, '2024-01-04', '5:15 PM', 24, 59, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (109, '2024-01-05', '6:16 PM', 25, 56, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (110, '2024-01-03', '8:46 PM', 19, 55, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (111, '2024-01-02', '6:59 PM', 15, 36, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (112, '2024-01-02', '6:38 PM', 4, 8, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (113, '2024-01-01', '7:35 PM', 21, 10, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (114, '2024-01-05', '5:21 PM', 10, 29, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (115, '2024-01-05', '5:42 PM', 18, 28, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (116, '2024-01-04', '5:32 PM', 19, 23, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (117, '2024-01-05', '5:48 PM', 6, 12, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (118, '2024-01-03', '5:45 PM', 22, 25, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (119, '2024-01-02', '7:04 PM', 25, 33, 10, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (120, '2024-01-02', '5:01 PM', 2, 2, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (121, '2024-01-02', '7:21 PM', 24, 36, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (122, '2024-01-04', '6:00 PM', 16, 58, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (123, '2024-01-01', '7:38 PM', 4, 51, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (124, '2024-01-03', '8:44 PM', 9, 49, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (125, '2024-01-01', '9:28 PM', 24, 47, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (126, '2024-01-05', '9:24 PM', 11, 2, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (127, '2024-01-04', '6:09 PM', 9, 55, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (128, '2024-01-03', '8:59 PM', 6, 53, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (129, '2024-01-05', '5:04 PM', 8, 24, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (130, '2024-01-04', '7:50 PM', 4, 4, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (131, '2024-01-01', '7:32 PM', 23, 40, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (132, '2024-01-05', '7:45 PM', 19, 22, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (133, '2024-01-05', '8:10 PM', 17, 45, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (134, '2024-01-01', '9:01 PM', 23, 43, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (135, '2024-01-01', '8:07 PM', 11, 31, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (136, '2024-01-04', '6:27 PM', 12, 31, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (137, '2024-01-05', '7:31 PM', 7, 37, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (138, '2024-01-04', '7:45 PM', 18, 55, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (139, '2024-01-03', '7:03 PM', 14, 1, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (140, '2024-01-03', '5:29 PM', 20, 39, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (141, '2024-01-01', '6:50 PM', 11, 5, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (142, '2024-01-02', '9:24 PM', 10, 36, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (143, '2024-01-02', '8:29 PM', 19, 29, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (144, '2024-01-01', '8:11 PM', 14, 52, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (145, '2024-01-01', '8:56 PM', 14, 29, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (146, '2024-01-02', '7:35 PM', 15, 15, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (147, '2024-01-02', '5:29 PM', 25, 31, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (148, '2024-01-02', '6:26 PM', 5, 19, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (149, '2024-01-03', '5:10 PM', 18, 4, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (150, '2024-01-05', '9:47 PM', 23, 1, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (151, '2024-01-04', '8:17 PM', 23, 28, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (152, '2024-01-05', '5:22 PM', 17, 56, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (153, '2024-01-03', '6:05 PM', 9, 2, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (154, '2024-01-04', '8:07 PM', 7, 44, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (155, '2024-01-01', '9:34 PM', 11, 43, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (156, '2024-01-01', '7:45 PM', 17, 31, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (157, '2024-01-03', '5:17 PM', 18, 16, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (158, '2024-01-03', '6:36 PM', 20, 21, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (159, '2024-01-05', '8:21 PM', 25, 55, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (160, '2024-01-02', '6:31 PM', 4, 25, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (161, '2024-01-01', '7:30 PM', 15, 22, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (162, '2024-01-04', '5:44 PM', 18, 13, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (163, '2024-01-05', '9:05 PM', 7, 9, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (164, '2024-01-05', '9:13 PM', 20, 56, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (165, '2024-01-01', '7:09 PM', 3, 17, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (166, '2024-01-03', '6:56 PM', 7, 30, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (167, '2024-01-04', '8:48 PM', 21, 40, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (168, '2024-01-04', '8:57 PM', 9, 57, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (169, '2024-01-05', '8:20 PM', 21, 25, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (170, '2024-01-03', '8:23 PM', 16, 28, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (171, '2024-01-03', '7:16 PM', 23, 12, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (172, '2024-01-01', '9:44 PM', 18, 12, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (173, '2024-01-03', '8:48 PM', 21, 49, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (174, '2024-01-03', '7:07 PM', 8, 8, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (175, '2024-01-04', '7:30 PM', 21, 23, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (176, '2024-01-04', '7:48 PM', 7, 36, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (177, '2024-01-03', '6:34 PM', 20, 26, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (178, '2024-01-05', '6:21 PM', 13, 57, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (179, '2024-01-05', '6:06 PM', 4, 1, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (180, '2024-01-01', '7:25 PM', 14, 39, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (181, '2024-01-04', '7:16 PM', 12, 57, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (182, '2024-01-01', '6:17 PM', 10, 42, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (183, '2024-01-04', '6:45 PM', 12, 46, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (184, '2024-01-02', '6:43 PM', 8, 5, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (185, '2024-01-02', '5:41 PM', 11, 10, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (186, '2024-01-05', '7:39 PM', 23, 56, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (187, '2024-01-04', '7:36 PM', 20, 10, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (188, '2024-01-03', '5:24 PM', 1, 58, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (189, '2024-01-01', '5:24 PM', 7, 22, 8, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (190, '2024-01-05', '6:36 PM', 16, 8, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (191, '2024-01-02', '8:54 PM', 3, 50, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (192, '2024-01-03', '7:00 PM', 10, 41, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (193, '2024-01-03', '7:49 PM', 21, 46, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (194, '2024-01-04', '6:02 PM', 15, 3, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (195, '2024-01-01', '9:19 PM', 25, 58, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (196, '2024-01-04', '9:54 PM', 9, 16, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (197, '2024-01-01', '7:01 PM', 2, 54, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (198, '2024-01-02', '5:30 PM', 15, 38, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (199, '2024-01-01', '9:50 PM', 22, 53, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (200, '2024-01-03', '5:13 PM', 14, 3, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (201, '2024-01-01', '6:48 PM', 9, 5, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (202, '2024-01-02', '8:50 PM', 22, 56, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (203, '2024-01-01', '5:37 PM', 19, 47, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (204, '2024-01-01', '5:12 PM', 5, 52, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (205, '2024-01-03', '6:00 PM', 15, 46, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (206, '2024-01-01', '6:56 PM', 1, 50, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (207, '2024-01-03', '8:27 PM', 11, 13, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (208, '2024-01-05', '6:23 PM', 1, 35, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (209, '2024-01-02', '7:06 PM', 15, 13, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (210, '2024-01-01', '8:21 PM', 22, 30, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (211, '2024-01-05', '9:38 PM', 18, 26, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (212, '2024-01-05', '5:20 PM', 21, 27, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (213, '2024-01-05', '5:39 PM', 9, 2, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (214, '2024-01-04', '7:57 PM', 17, 15, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (215, '2024-01-02', '8:00 PM', 20, 44, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (216, '2024-01-03', '9:05 PM', 22, 14, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (217, '2024-01-01', '6:49 PM', 18, 29, 8, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (218, '2024-01-03', '9:29 PM', 6, 28, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (219, '2024-01-01', '5:01 PM', 18, 53, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (220, '2024-01-01', '5:44 PM', 20, 5, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (221, '2024-01-02', '7:43 PM', 22, 15, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (222, '2024-01-04', '9:07 PM', 13, 28, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (223, '2024-01-02', '8:02 PM', 18, 2, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (224, '2024-01-03', '8:33 PM', 21, 16, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (225, '2024-01-02', '5:21 PM', 8, 31, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (226, '2024-01-04', '7:34 PM', 19, 13, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (227, '2024-01-01', '9:35 PM', 21, 45, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (228, '2024-01-02', '5:10 PM', 10, 9, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (229, '2024-01-01', '6:56 PM', 25, 9, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (230, '2024-01-02', '9:46 PM', 3, 27, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (231, '2024-01-03', '7:25 PM', 19, 38, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (232, '2024-01-05', '7:39 PM', 22, 57, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (233, '2024-01-02', '9:21 PM', 6, 3, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (234, '2024-01-01', '6:11 PM', 3, 60, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (235, '2024-01-02', '5:22 PM', 17, 2, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (236, '2024-01-05', '6:33 PM', 16, 3, 4, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (237, '2024-01-04', '5:41 PM', 14, 6, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (238, '2024-01-02', '8:19 PM', 7, 42, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (239, '2024-01-04', '5:28 PM', 10, 15, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (240, '2024-01-02', '5:36 PM', 1, 20, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (241, '2024-01-02', '7:28 PM', 25, 29, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (242, '2024-01-04', '7:13 PM', 5, 17, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (243, '2024-01-03', '7:26 PM', 18, 57, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (244, '2024-01-04', '5:40 PM', 22, 9, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (245, '2024-01-05', '5:03 PM', 21, 34, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (246, '2024-01-02', '9:09 PM', 8, 7, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (247, '2024-01-03', '6:30 PM', 7, 43, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (248, '2024-01-04', '8:44 PM', 21, 9, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (249, '2024-01-03', '8:14 PM', 4, 42, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (250, '2024-01-01', '5:33 PM', 10, 44, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (251, '2024-01-05', '7:44 PM', 14, 13, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (252, '2024-01-05', '6:38 PM', 8, 19, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (253, '2024-01-05', '6:46 PM', 1, 6, 9, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (254, '2024-01-05', '8:37 PM', 19, 18, 5, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (255, '2024-01-04', '5:28 PM', 6, 40, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (256, '2024-01-05', '8:33 PM', 23, 58, 8, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (257, '2024-01-03', '8:39 PM', 11, 60, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (258, '2024-01-02', '8:03 PM', 19, 33, 7, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (259, '2024-01-03', '8:58 PM', 23, 60, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (260, '2024-01-05', '5:29 PM', 22, 8, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (261, '2024-01-02', '9:34 PM', 16, 49, 10, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (262, '2024-01-01', '7:16 PM', 12, 28, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (263, '2024-01-04', '9:01 PM', 20, 3, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (264, '2024-01-01', '8:03 PM', 19, 44, 4, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (265, '2024-01-01', '7:26 PM', 3, 37, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (266, '2024-01-03', '9:29 PM', 15, 50, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (267, '2024-01-05', '6:33 PM', 25, 42, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (268, '2024-01-01', '8:05 PM', 24, 27, 1, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (269, '2024-01-01', '7:22 PM', 22, 52, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (270, '2024-01-05', '8:50 PM', 24, 3, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (271, '2024-01-05', '8:39 PM', 11, 45, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (272, '2024-01-01', '6:36 PM', 1, 41, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (273, '2024-01-05', '7:11 PM', 1, 22, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (274, '2024-01-05', '7:25 PM', 1, 42, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (275, '2024-01-03', '6:30 PM', 17, 47, 6, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (276, '2024-01-03', '8:51 PM', 3, 57, 4, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (277, '2024-01-03', '7:11 PM', 6, 34, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (278, '2024-01-04', '6:34 PM', 2, 29, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (279, '2024-01-02', '5:45 PM', 3, 2, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (280, '2024-01-03', '5:32 PM', 13, 16, 3, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (281, '2024-01-04', '8:31 PM', 5, 29, 2, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (282, '2024-01-02', '8:21 PM', 18, 32, 5, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (283, '2024-01-05', '8:52 PM', 8, 14, 10, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (284, '2024-01-05', '5:32 PM', 8, 35, 7, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (285, '2024-01-05', '9:35 PM', 2, 40, 7, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (286, '2024-01-04', '9:56 PM', 21, 57, 5, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (287, '2024-01-03', '5:41 PM', 17, 13, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (288, '2024-01-05', '7:57 PM', 8, 48, 2, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (289, '2024-01-04', '7:27 PM', 6, 45, 9, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (290, '2024-01-02', '9:01 PM', 18, 9, 3, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (291, '2024-01-01', '6:45 PM', 15, 51, 2, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (292, '2024-01-02', '6:53 PM', 23, 38, 9, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (293, '2024-01-03', '6:20 PM', 8, 22, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (294, '2024-01-04', '8:32 PM', 5, 32, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (295, '2024-01-03', '7:41 PM', 7, 10, 6, 1);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (296, '2024-01-01', '5:05 PM', 18, 55, 3, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (297, '2024-01-04', '5:46 PM', 22, 52, 1, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (298, '2024-01-01', '5:29 PM', 17, 9, 6, 2);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (299, '2024-01-05', '5:20 PM', 17, 46, 1, 3);
insert into TableBooking (TableBookingID, BookingDate, BookingTime, NumberOfGuests, TableID, CustomerID, RestaurantID) values (300, '2024-01-05', '9:37 PM', 18, 17, 6, 2);







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

