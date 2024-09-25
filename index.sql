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



-- Get a list of all tables in the restaurant (overview for the front-end)
-- (hvis han mener borde)
SELECT TableBookingID
FROM TableBooking;

-- (hvis han mener alle tabeller)
SELECT *
FROM Restaurant;




-- Get a list of all bookings for a given customer (when they arrive at the restaurant)
-- ordered by date
SELECT 

ORDER BY BookingDate;


-- spgs til Søren:
-- 1. PostalCode har jeg gjort det rigtigt?
-- 2. foreign keys connect i design (phpmyadmin) kan jeg ikke få til at virke
-- 3. kan man sætte test data ind således at det ikke fylder hele siden
-- 4. hvorfor skriver du NOT NULL og NULL. Forstår ikke logikken
-- 5. hvis jeg har flere restauranter, hvordan kan jeg så have samme data for bookede borde hos alle restauranter
-- 6. Hvad mener du ved "(overview for the front-end)" i: Get a list of all tables in the restaurant (overview for the front-end)
-- 7. Get a list of all tables in the restaurant.... mener du borde eller tabel
-- 8. (when they arrive at the restaurant) - kan du uddybe det er for noget data der kan fortælle om når de ankommer til restauranten
-- 9. hvorfor skal man ikke skrive hver foreign key i hver tabel der er forbundet sammen





-- restaurant test data
insert into Restaurant (RestaurantID, Name, Email, PhoneNumber, Address) values (1, 'Kiehn-Senger', 'theenan0@bbc.co.uk', '621-393-5154', '8 1st Plaza');
insert into Restaurant (RestaurantID, Name, Email, PhoneNumber, Address) values (2, 'Brown Inc', 'onevett1@elegantthemes.com', '527-596-3891', '430 Lindbergh Road');
insert into Restaurant (RestaurantID, Name, Email, PhoneNumber, Address) values (3, 'Greenholt Group', 'cbaudet2@yahoo.co.jp', '266-256-6622', '3 Maple Wood Point');
insert into Restaurant (RestaurantID, Name, Email, PhoneNumber, Address) values (4, 'Schuster-Conn', 'rceyssen3@people.com.cn', '436-462-0171', '51780 Russell Place');
insert into Restaurant (RestaurantID, Name, Email, PhoneNumber, Address) values (5, 'Pfannerstill Group', 'rmcrae4@slate.com', '141-775-6435', '04335 Twin Pines Court');
insert into Restaurant (RestaurantID, Name, Email, PhoneNumber, Address) values (6, 'Cassin-O''Hara', 'aelwyn5@shareasale.com', '673-797-1713', '1 Blackbird Pass');
insert into Restaurant (RestaurantID, Name, Email, PhoneNumber, Address) values (7, 'Lesch-Haag', 'abrahams6@1und1.de', '756-564-2941', '6 Gina Parkway');
insert into Restaurant (RestaurantID, Name, Email, PhoneNumber, Address) values (8, 'Windler and Sons', 'arubica7@vimeo.com', '990-216-5110', '2 Sheridan Alley');
insert into Restaurant (RestaurantID, Name, Email, PhoneNumber, Address) values (9, 'Prohaska LLC', 'ncardillo8@123-reg.co.uk', '415-888-9709', '674 Kensington Place');
insert into Restaurant (RestaurantID, Name, Email, PhoneNumber, Address) values (10, 'Abernathy and Sons', 'velston9@wufoo.com', '469-216-5073', '3 Fallview Trail');


-- customer test data
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (1, 'Geordie', 'Setch', 'gsetch0@reverbnation.com', '713-284-4843', '34638 Kinsman Road');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (2, 'Otho', 'Challenger', 'ochallenger1@nbcnews.com', '754-339-6720', '4 New Castle Hill');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (3, 'Gabbie', 'Karchowski', 'gkarchowski2@technorati.com', '262-307-5574', '42684 Atwood Terrace');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (4, 'Berri', 'Berney', 'bberney3@miibeian.gov.cn', '368-486-1466', '38 Maple Plaza');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (5, 'Alon', 'Kittoe', 'akittoe4@chicagotribune.com', '110-650-1421', '487 Erie Road');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (6, 'Patty', 'Premble', 'ppremble5@archive.org', '696-767-1511', '4 Roxbury Place');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (7, 'Jacklyn', 'Antrum', 'jantrum6@skype.com', '221-556-9925', '9465 Esker Point');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (8, 'Jacquie', 'Krolman', 'jkrolman7@google.nl', '340-981-2011', '520 Summit Crossing');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (9, 'Cristin', 'Bosche', 'cbosche8@51.la', '618-476-0707', '3632 Utah Plaza');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (10, 'Kalvin', 'Gladwell', 'kgladwell9@posterous.com', '210-407-3895', '1 Pawling Road');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (11, 'Duky', 'Arthurs', 'darthursa@tumblr.com', '620-371-6653', '9082 Northport Crossing');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (12, 'Foster', 'Yerbury', 'fyerburyb@msu.edu', '410-414-1813', '6318 Burrows Center');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (13, 'Johna', 'Gallager', 'jgallagerc@weebly.com', '402-110-2762', '9599 Katie Road');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (14, 'Ezechiel', 'Deboo', 'edebood@nih.gov', '733-665-4996', '0156 Continental Point');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (15, 'Gretta', 'Lobe', 'globee@reverbnation.com', '129-808-5896', '81447 Eagan Street');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (16, 'Tyne', 'Le Barr', 'tlebarrf@slate.com', '282-900-8013', '9838 Troy Plaza');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (17, 'Filippo', 'Stainland', 'fstainlandg@blogs.com', '181-813-6218', '96076 Clarendon Junction');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (18, 'Gabriella', 'Ferentz', 'gferentzh@diigo.com', '291-608-8952', '97 Sycamore Park');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (19, 'Shir', 'Kenrack', 'skenracki@instagram.com', '122-821-5877', '89477 Packers Court');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (20, 'Brigitta', 'Skrine', 'bskrinej@list-manage.com', '230-683-2561', '357 Green Street');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (21, 'Jedediah', 'Itzhaki', 'jitzhakik@deliciousdays.com', '674-637-3773', '8812 Towne Center');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (22, 'Adan', 'Stracey', 'astraceyl@huffingtonpost.com', '845-592-5045', '02 Sachs Alley');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (23, 'Jacquelyn', 'Arlow', 'jarlowm@ibm.com', '753-755-6037', '44 Buell Terrace');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (24, 'Rhody', 'Brewerton', 'rbrewertonn@bluehost.com', '685-540-3133', '3 Del Mar Park');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (25, 'Ethelred', 'Leamy', 'eleamyo@blog.com', '955-595-3689', '893 Lukken Parkway');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (26, 'Kalina', 'Hicklingbottom', 'khicklingbottomp@spiegel.de', '597-257-8330', '932 Thackeray Road');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (27, 'Scarlett', 'Alderson', 'saldersonq@engadget.com', '336-110-1781', '547 Gateway Hill');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (28, 'Karlene', 'Szapiro', 'kszapiror@google.de', '748-662-1261', '22 Dahle Terrace');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (29, 'Sheryl', 'Cuxon', 'scuxons@photobucket.com', '959-985-2914', '94624 Service Pass');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (30, 'Andi', 'Shurrock', 'ashurrockt@timesonline.co.uk', '932-788-8436', '35057 Iowa Street');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (31, 'Harp', 'Brim', 'hbrimu@opensource.org', '804-535-0382', '118 Red Cloud Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (32, 'Christina', 'Decker', 'cdeckerv@51.la', '435-432-7324', '5 Talisman Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (33, 'Temp', 'Kennealy', 'tkennealyw@miitbeian.gov.cn', '756-185-7097', '66066 Weeping Birch Parkway');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (34, 'Belia', 'Schwander', 'bschwanderx@merriam-webster.com', '123-866-6803', '3 Macpherson Trail');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (35, 'Noe', 'Copley', 'ncopleyy@dailymail.co.uk', '345-575-0271', '4078 Lukken Trail');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (36, 'Ediva', 'Grishanov', 'egrishanovz@so-net.ne.jp', '763-263-3599', '4 Harper Point');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (37, 'Heywood', 'Birtle', 'hbirtle10@huffingtonpost.com', '217-185-4066', '069 Hagan Plaza');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (38, 'Beatrisa', 'Waggatt', 'bwaggatt11@ocn.ne.jp', '241-359-9783', '03221 Kim Street');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (39, 'Cari', 'Grisdale', 'cgrisdale12@columbia.edu', '172-334-1353', '5 6th Circle');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (40, 'Storm', 'Szymonwicz', 'sszymonwicz13@ox.ac.uk', '336-208-6400', '849 School Terrace');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (41, 'Harcourt', 'Thorburn', 'hthorburn14@wordpress.org', '496-531-7465', '33 Bonner Junction');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (42, 'Elisabeth', 'Wohlers', 'ewohlers15@bloglines.com', '601-797-0538', '5 Daystar Plaza');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (43, 'Obadiah', 'Donnellan', 'odonnellan16@squidoo.com', '958-240-9873', '74 Evergreen Way');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (44, 'Jamaal', 'Revening', 'jrevening17@cnbc.com', '901-694-9879', '940 Ridge Oak Park');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (45, 'Prentiss', 'Beall', 'pbeall18@networksolutions.com', '971-164-5502', '1 Victoria Street');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (46, 'Georgy', 'Sciacovelli', 'gsciacovelli19@issuu.com', '735-534-2809', '027 Nobel Way');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (47, 'Nahum', 'Thome', 'nthome1a@sakura.ne.jp', '369-292-4806', '366 Riverside Trail');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (48, 'Rolph', 'Gellion', 'rgellion1b@hc360.com', '368-926-2949', '14 Jay Plaza');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (49, 'Basilius', 'McConigal', 'bmcconigal1c@mapy.cz', '548-487-4538', '396 Cordelia Terrace');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (50, 'Ebenezer', 'Coppins', 'ecoppins1d@comsenz.com', '208-278-0739', '361 Scott Center');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (51, 'Meredithe', 'Roof', 'mroof1e@ucoz.com', '759-799-7877', '18 Forest Junction');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (52, 'Bren', 'Longmate', 'blongmate1f@marriott.com', '594-864-3493', '322 Tennessee Junction');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (53, 'Emmett', 'Nussgen', 'enussgen1g@w3.org', '348-147-2984', '378 Hudson Terrace');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (54, 'Othello', 'Isenor', 'oisenor1h@printfriendly.com', '317-153-1776', '04 Erie Way');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (55, 'Samuele', 'Chell', 'schell1i@bbb.org', '567-254-9042', '64495 Shelley Court');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (56, 'Ebba', 'Aberdein', 'eaberdein1j@vinaora.com', '277-675-2224', '00 Harbort Road');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (57, 'Alana', 'Robe', 'arobe1k@japanpost.jp', '565-477-1109', '7 Dovetail Avenue');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (58, 'Consuela', 'Ilive', 'cilive1l@fastcompany.com', '308-900-4839', '98168 Clyde Gallagher Way');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (59, 'Feliza', 'Ballance', 'fballance1m@blogs.com', '574-430-2708', '7037 Grim Drive');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (60, 'Clifford', 'Lingard', 'clingard1n@ft.com', '465-366-0276', '79251 Butterfield Way');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (61, 'Rani', 'Croce', 'rcroce1o@wix.com', '332-449-3500', '56517 Superior Trail');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (62, 'Buddie', 'Skettles', 'bskettles1p@is.gd', '878-694-2691', '50 Towne Crossing');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (63, 'Kaitlynn', 'Fishly', 'kfishly1q@imgur.com', '236-462-6074', '085 Brickson Park Junction');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (64, 'Herc', 'Dukelow', 'hdukelow1r@virginia.edu', '990-886-6313', '34186 American Ash Drive');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (65, 'Jobie', 'Goodisson', 'jgoodisson1s@feedburner.com', '319-450-2248', '4 Esch Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (66, 'Weber', 'Hasser', 'whasser1t@illinois.edu', '730-648-7101', '82790 Colorado Circle');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (67, 'Karel', 'Esh', 'kesh1u@nature.com', '531-741-1665', '2 Merchant Court');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (68, 'De', 'Lyle', 'dlyle1v@cbsnews.com', '646-567-1870', '931 Manley Trail');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (69, 'Nevil', 'Pavelka', 'npavelka1w@prlog.org', '882-841-9512', '97166 Dovetail Plaza');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (70, 'Sue', 'Lethby', 'slethby1x@booking.com', '610-831-6198', '12210 Cambridge Crossing');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (71, 'Boot', 'Healeas', 'bhealeas1y@eepurl.com', '563-341-7009', '8907 Chive Street');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (72, 'Bartolomeo', 'Piper', 'bpiper1z@stanford.edu', '495-781-6573', '129 Burrows Junction');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (73, 'Ashby', 'Kesterton', 'akesterton20@bbb.org', '510-880-0221', '4011 Holy Cross Pass');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (74, 'Caressa', 'Bukowski', 'cbukowski21@gizmodo.com', '116-894-7147', '75 Kenwood Court');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (75, 'Janaye', 'Mc Faul', 'jmcfaul22@salon.com', '540-835-2858', '99086 Dayton Road');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (76, 'Denney', 'Elwill', 'delwill23@ocn.ne.jp', '240-140-0199', '719 Pearson Road');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (77, 'Bruce', 'Kornilov', 'bkornilov24@amazon.com', '608-759-8680', '659 Fair Oaks Parkway');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (78, 'Em', 'Freeland', 'efreeland25@dailymotion.com', '172-713-9284', '9327 Reindahl Plaza');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (79, 'Livvyy', 'Barber', 'lbarber26@wikipedia.org', '828-514-8901', '611 Loftsgordon Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (80, 'Barr', 'Pinching', 'bpinching27@shareasale.com', '253-964-1875', '1968 Kingsford Pass');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (81, 'Ben', 'Reynalds', 'breynalds28@netvibes.com', '205-652-4561', '5918 Ohio Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (82, 'Bondy', 'Skottle', 'bskottle29@mapy.cz', '757-359-8566', '253 Walton Crossing');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (83, 'Jolene', 'Pearch', 'jpearch2a@dailymotion.com', '414-579-0574', '802 Brentwood Plaza');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (84, 'Bailie', 'Bosence', 'bbosence2b@tmall.com', '844-135-9564', '04 Hovde Center');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (85, 'Jerrie', 'MacKomb', 'jmackomb2c@thetimes.co.uk', '396-291-0450', '9 Kennedy Street');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (86, 'Evonne', 'Burroughes', 'eburroughes2d@sciencedaily.com', '878-848-7611', '5411 Holmberg Center');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (87, 'Thornie', 'Dineges', 'tdineges2e@nyu.edu', '246-873-2128', '31711 Michigan Terrace');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (88, 'Sharron', 'O''Spellissey', 'sospellissey2f@ifeng.com', '671-760-3332', '75985 Talmadge Park');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (89, 'Laurence', 'Lamp', 'llamp2g@infoseek.co.jp', '539-972-0119', '287 Dottie Junction');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (90, 'Loretta', 'Kinastan', 'lkinastan2h@artisteer.com', '205-773-9459', '0392 Sunfield Road');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (91, 'Shandee', 'Jaouen', 'sjaouen2i@house.gov', '983-756-4737', '9113 Hanover Place');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (92, 'Baily', 'Moakes', 'bmoakes2j@flickr.com', '494-487-2220', '0169 Barnett Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (93, 'Tristan', 'Sokell', 'tsokell2k@storify.com', '841-193-5803', '580 Kensington Crossing');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (94, 'Davina', 'Burgisi', 'dburgisi2l@delicious.com', '650-519-9744', '0 David Place');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (95, 'Cleve', 'Siflet', 'csiflet2m@prlog.org', '716-320-4379', '673 Basil Road');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (96, 'Hermine', 'Downage', 'hdownage2n@chron.com', '942-826-4637', '9 Walton Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (97, 'Ariel', 'Filyushkin', 'afilyushkin2o@narod.ru', '771-479-7921', '0 Michigan Court');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (98, 'Shana', 'Hintze', 'shintze2p@scientificamerican.com', '765-642-8262', '2 Hoffman Park');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (99, 'Sim', 'Gounard', 'sgounard2q@github.com', '382-650-8886', '4 Menomonie Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (100, 'Diane-marie', 'Antrim', 'dantrim2r@blinklist.com', '836-741-6683', '75 Armistice Junction');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (101, 'Currey', 'Wincom', 'cwincom2s@ibm.com', '353-644-3683', '2018 Surrey Alley');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (102, 'Xerxes', 'Sivess', 'xsivess2t@wisc.edu', '537-744-7506', '54 Corry Avenue');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (103, 'Charley', 'Thomel', 'cthomel2u@spiegel.de', '611-202-1350', '696 Pond Drive');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (104, 'Victoir', 'Pibworth', 'vpibworth2v@prlog.org', '804-551-5497', '042 Fieldstone Pass');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (105, 'Claus', 'Turnbull', 'cturnbull2w@flickr.com', '748-926-2493', '47 Hudson Point');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (106, 'Red', 'Bucktharp', 'rbucktharp2x@nhs.uk', '752-455-0041', '8778 Golf Course Way');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (107, 'Roseanne', 'Trappe', 'rtrappe2y@xinhuanet.com', '190-901-3394', '09821 Continental Avenue');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (108, 'Tann', 'Filyakov', 'tfilyakov2z@devhub.com', '872-805-5059', '2911 Springs Alley');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (109, 'Gretna', 'Niblett', 'gniblett30@google.com.au', '748-930-4583', '5 Stuart Road');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (110, 'Mathias', 'Whitticks', 'mwhitticks31@apache.org', '732-706-0858', '5710 Becker Crossing');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (111, 'Enriqueta', 'Kobus', 'ekobus32@yelp.com', '370-353-8597', '82226 Killdeer Park');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (112, 'Uri', 'Tadman', 'utadman33@slashdot.org', '216-826-5234', '3 Hanover Park');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (113, 'Jourdain', 'Osmon', 'josmon34@si.edu', '651-140-1966', '84868 Mockingbird Park');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (114, 'Martainn', 'MacIlraith', 'mmacilraith35@parallels.com', '808-964-7771', '616 Nancy Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (115, 'Inglis', 'Navan', 'inavan36@sphinn.com', '308-854-7236', '95 Spenser Plaza');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (116, 'Silva', 'Pedroni', 'spedroni37@123-reg.co.uk', '258-167-5422', '516 Leroy Court');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (117, 'Vic', 'Wardhough', 'vwardhough38@ft.com', '298-491-8163', '6378 Main Crossing');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (118, 'Mic', 'Mattaser', 'mmattaser39@mit.edu', '365-511-7271', '5531 Londonderry Trail');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (119, 'Colas', 'Linfield', 'clinfield3a@google.com.br', '829-192-8506', '57 Miller Place');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (120, 'Adelina', 'Sotheron', 'asotheron3b@istockphoto.com', '376-828-5545', '197 Kipling Alley');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (121, 'Tarrah', 'Hourstan', 'thourstan3c@nationalgeographic.com', '189-523-9330', '83387 Anthes Pass');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (122, 'Dorie', 'Dumingo', 'ddumingo3d@squarespace.com', '395-462-0172', '6 Spaight Circle');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (123, 'Abbie', 'Heck', 'aheck3e@howstuffworks.com', '373-212-6722', '8693 Brickson Park Place');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (124, 'Willie', 'Cazereau', 'wcazereau3f@google.it', '850-429-7333', '440 Main Alley');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (125, 'Dav', 'Pennoni', 'dpennoni3g@miibeian.gov.cn', '636-968-3096', '0156 Sullivan Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (126, 'Josefina', 'Firth', 'jfirth3h@unesco.org', '942-795-5490', '87715 Victoria Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (127, 'Reinaldo', 'Dockreay', 'rdockreay3i@example.com', '396-384-4173', '75704 Dixon Way');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (128, 'Beau', 'Cutcliffe', 'bcutcliffe3j@acquirethisname.com', '226-376-7367', '47185 Lotheville Pass');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (129, 'Wynny', 'Whillock', 'wwhillock3k@army.mil', '805-645-4677', '86649 2nd Circle');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (130, 'Kirstin', 'Siemantel', 'ksiemantel3l@dedecms.com', '856-124-7363', '881 Express Hill');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (131, 'Sorcha', 'MacSkeagan', 'smacskeagan3m@nytimes.com', '680-946-6317', '4 Aberg Court');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (132, 'Olive', 'Luck', 'oluck3n@weibo.com', '189-197-7736', '740 Darwin Street');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (133, 'Georgetta', 'MacGowan', 'gmacgowan3o@google.co.uk', '403-909-9529', '1 Truax Point');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (134, 'Marj', 'Virgin', 'mvirgin3p@si.edu', '162-950-5580', '35681 Pennsylvania Avenue');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (135, 'Harley', 'Ashington', 'hashington3q@senate.gov', '680-924-5321', '2 Thierer Crossing');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (136, 'Arlee', 'Salthouse', 'asalthouse3r@technorati.com', '399-847-0870', '43652 Gateway Parkway');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (137, 'Irvin', 'McNirlan', 'imcnirlan3s@vinaora.com', '606-307-9863', '3814 Springview Court');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (138, 'Kristina', 'Bellay', 'kbellay3t@ftc.gov', '525-383-8415', '7 Texas Hill');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (139, 'Ginnie', 'Mowling', 'gmowling3u@geocities.com', '255-414-7714', '8041 Susan Place');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (140, 'Eimile', 'Alvin', 'ealvin3v@apache.org', '202-549-5105', '56 Boyd Park');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (141, 'Betteann', 'Humble', 'bhumble3w@tamu.edu', '501-431-5241', '38 Village Green Center');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (142, 'Wolfgang', 'Meran', 'wmeran3x@cornell.edu', '187-846-6830', '30 Leroy Place');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (143, 'Alissa', 'Flight', 'aflight3y@fema.gov', '903-730-8375', '8 7th Trail');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (144, 'See', 'Hastin', 'shastin3z@cpanel.net', '494-586-7219', '52060 Ridgeview Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (145, 'Ninette', 'Maylour', 'nmaylour40@symantec.com', '979-655-4758', '564 Cambridge Terrace');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (146, 'Wylma', 'Petruskevich', 'wpetruskevich41@chron.com', '596-966-6803', '36 Harbort Street');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (147, 'Taffy', 'Schall', 'tschall42@nbcnews.com', '854-701-4231', '09703 Bellgrove Trail');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (148, 'Biddie', 'Strutley', 'bstrutley43@fotki.com', '370-606-6988', '0184 Golf Way');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (149, 'Tonia', 'Claiton', 'tclaiton44@imageshack.us', '345-246-5567', '9947 Porter Trail');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (150, 'Warden', 'Lucas', 'wlucas45@bloomberg.com', '524-392-8608', '5023 Pleasure Court');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (151, 'Corrina', 'Foyle', 'cfoyle46@tamu.edu', '369-859-4035', '43115 Veith Center');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (152, 'Debor', 'Lownsbrough', 'dlownsbrough47@nifty.com', '369-881-4927', '0732 Thackeray Way');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (153, 'Clotilda', 'Hubber', 'chubber48@goo.gl', '937-741-8862', '126 Haas Pass');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (154, 'Ferdie', 'Wandrack', 'fwandrack49@elegantthemes.com', '292-314-4586', '783 Darwin Circle');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (155, 'Lyn', 'Gamell', 'lgamell4a@t-online.de', '862-571-9409', '10 Carey Terrace');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (156, 'Carrie', 'Todari', 'ctodari4b@tmall.com', '131-960-8065', '4938 Hoepker Circle');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (157, 'Diane', 'Chellingworth', 'dchellingworth4c@cargocollective.com', '130-332-2941', '17 Waywood Trail');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (158, 'Laurence', 'Hearsum', 'lhearsum4d@google.com.hk', '422-831-0529', '0 Dennis Avenue');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (159, 'Constantine', 'Yanukhin', 'cyanukhin4e@exblog.jp', '976-858-7567', '70858 Lighthouse Bay Crossing');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (160, 'Selestina', 'Allard', 'sallard4f@multiply.com', '734-698-9878', '6 Schurz Pass');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (161, 'Piotr', 'Ferris', 'pferris4g@netlog.com', '491-463-6344', '23444 Oak Valley Junction');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (162, 'Harry', 'Dedon', 'hdedon4h@psu.edu', '269-659-6310', '759 Bultman Place');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (163, 'Cletis', 'Huckstepp', 'chuckstepp4i@mit.edu', '181-783-7468', '3 Farwell Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (164, 'Steffi', 'Razoux', 'srazoux4j@over-blog.com', '917-458-0882', '87098 Texas Parkway');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (165, 'Tracee', 'Beese', 'tbeese4k@weebly.com', '980-158-8427', '18076 Del Mar Circle');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (166, 'Gretna', 'Bromell', 'gbromell4l@istockphoto.com', '943-228-2181', '773 Sycamore Street');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (167, 'Fabio', 'Aikett', 'faikett4m@geocities.com', '696-889-4734', '39958 Upham Center');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (168, 'Keefe', 'Quirke', 'kquirke4n@prlog.org', '868-356-2874', '87593 Huxley Street');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (169, 'Tally', 'Daubeny', 'tdaubeny4o@vkontakte.ru', '594-921-5707', '320 Northview Plaza');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (170, 'Louise', 'Gidley', 'lgidley4p@pcworld.com', '835-854-3402', '5750 Mcbride Court');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (171, 'Hewitt', 'Tyrie', 'htyrie4q@blogger.com', '689-105-0679', '0783 Clove Drive');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (172, 'Dorothee', 'Baalham', 'dbaalham4r@devhub.com', '185-709-2844', '1122 Waubesa Way');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (173, 'Dalia', 'Lyston', 'dlyston4s@fotki.com', '836-987-7436', '94 Pierstorff Way');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (174, 'Lorelei', 'Yaknov', 'lyaknov4t@nymag.com', '854-908-4794', '527 Westport Point');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (175, 'Dulce', 'Markie', 'dmarkie4u@elpais.com', '763-107-9184', '4422 Kim Avenue');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (176, 'Chicky', 'Ledingham', 'cledingham4v@yellowbook.com', '222-471-9866', '25959 Dakota Place');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (177, 'Derry', 'Percy', 'dpercy4w@last.fm', '101-643-8111', '996 Coolidge Avenue');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (178, 'Karrie', 'McCook', 'kmccook4x@bloglovin.com', '163-853-7476', '1002 Springs Terrace');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (179, 'Dallon', 'Du Hamel', 'dduhamel4y@baidu.com', '397-438-3811', '05819 Sommers Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (180, 'Angele', 'Chartres', 'achartres4z@amazonaws.com', '144-587-3290', '23485 Grayhawk Park');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (181, 'Nani', 'Brain', 'nbrain50@usnews.com', '111-613-1891', '86837 Nevada Road');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (182, 'Belva', 'Kolak', 'bkolak51@phoca.cz', '435-183-7592', '3339 Bluejay Alley');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (183, 'Hally', 'Vanne', 'hvanne52@fastcompany.com', '724-783-0935', '4 Lindbergh Plaza');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (184, 'Simone', 'Normanvell', 'snormanvell53@thetimes.co.uk', '231-990-6033', '5 Oxford Hill');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (185, 'Bryn', 'Desborough', 'bdesborough54@nytimes.com', '775-205-2677', '74 Jay Center');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (186, 'Lynnett', 'MacCook', 'lmaccook55@plala.or.jp', '435-889-2724', '6 Utah Pass');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (187, 'Dorine', 'De Ruggiero', 'dderuggiero56@huffingtonpost.com', '273-319-2878', '22913 Emmet Point');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (188, 'Waite', 'Klee', 'wklee57@smugmug.com', '391-547-4559', '7347 Killdeer Place');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (189, 'Damian', 'Tennet', 'dtennet58@dot.gov', '822-770-9364', '570 Straubel Place');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (190, 'Stepha', 'Shadrack', 'sshadrack59@mayoclinic.com', '571-946-8805', '60476 Daystar Hill');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (191, 'Elisabet', 'Sprankling', 'esprankling5a@moonfruit.com', '466-418-4557', '1 Del Mar Pass');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (192, 'Renaldo', 'Woodley', 'rwoodley5b@chronoengine.com', '103-672-9869', '07950 Northview Point');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (193, 'Mylo', 'Ianelli', 'mianelli5c@icio.us', '390-436-9521', '27924 South Drive');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (194, 'Harmonie', 'Blaydon', 'hblaydon5d@ca.gov', '351-823-0368', '544 Barby Park');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (195, 'Christiana', 'Cauley', 'ccauley5e@kickstarter.com', '142-806-4574', '3 Eliot Way');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (196, 'Delainey', 'Leport', 'dleport5f@abc.net.au', '550-506-0847', '3730 Continental Circle');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (197, 'Winnie', 'Verlander', 'wverlander5g@webnode.com', '867-368-7109', '979 Summerview Park');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (198, 'Pearce', 'Mainds', 'pmainds5h@weebly.com', '969-180-8693', '78012 Melody Junction');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (199, 'Veriee', 'Jarred', 'vjarred5i@economist.com', '643-999-7796', '83114 Mockingbird Junction');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (200, 'Fredrika', 'Vero', 'fvero5j@example.com', '980-470-4604', '8 Duke Hill');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (201, 'Pierrette', 'Smithin', 'psmithin5k@free.fr', '210-846-9840', '80 Maywood Park');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (202, 'Car', 'Panas', 'cpanas5l@craigslist.org', '915-228-2517', '42332 Continental Center');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (203, 'Donaugh', 'Sly', 'dsly5m@hugedomains.com', '218-287-0565', '70 Bunker Hill Circle');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (204, 'Lilith', 'Savine', 'lsavine5n@plala.or.jp', '717-270-9554', '104 Schmedeman Alley');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (205, 'Grover', 'Olyet', 'golyet5o@indiatimes.com', '346-276-7207', '41162 Merrick Junction');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (206, 'Elliot', 'Quixley', 'equixley5p@lycos.com', '810-223-5093', '99572 Elgar Pass');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (207, 'Efren', 'McCullouch', 'emccullouch5q@hud.gov', '837-603-8853', '7 Fallview Way');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (208, 'Iver', 'Borris', 'iborris5r@oakley.com', '167-550-7805', '889 Vidon Crossing');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (209, 'Stesha', 'Shoreman', 'sshoreman5s@simplemachines.org', '171-129-7047', '19 Grayhawk Alley');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (210, 'Eveline', 'Oleshunin', 'eoleshunin5t@tuttocitta.it', '486-253-4027', '87286 Ludington Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (211, 'Zacharia', 'Ioannidis', 'zioannidis5u@eventbrite.com', '615-432-6104', '2916 Blaine Alley');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (212, 'Zorah', 'Karpe', 'zkarpe5v@bandcamp.com', '569-932-8862', '90973 Riverside Terrace');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (213, 'Margo', 'Bantick', 'mbantick5w@over-blog.com', '249-612-2440', '59083 Londonderry Point');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (214, 'Melba', 'Stevens', 'mstevens5x@gizmodo.com', '711-986-2128', '2979 West Park');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (215, 'Evangelia', 'Dunleavy', 'edunleavy5y@clickbank.net', '609-496-0046', '35 Veith Court');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (216, 'Eberhard', 'Charity', 'echarity5z@networksolutions.com', '929-494-4580', '95 Boyd Place');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (217, 'Danni', 'Borthram', 'dborthram60@google.it', '946-650-4319', '603 Mayfield Terrace');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (218, 'Symon', 'Kelwick', 'skelwick61@chronoengine.com', '270-987-6065', '40 Weeping Birch Parkway');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (219, 'Bart', 'Burford', 'bburford62@disqus.com', '929-669-4637', '032 Fulton Avenue');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (220, 'Lucius', 'Colt', 'lcolt63@pagesperso-orange.fr', '511-675-6641', '8 Lawn Pass');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (221, 'Charlotta', 'Laneham', 'claneham64@phoca.cz', '483-710-0263', '290 Express Court');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (222, 'Niccolo', 'Silverwood', 'nsilverwood65@mapy.cz', '547-295-6218', '52353 Buell Court');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (223, 'Shirline', 'Fagence', 'sfagence66@abc.net.au', '456-783-0744', '69391 Cardinal Alley');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (224, 'Cristian', 'Boow', 'cboow67@google.pl', '646-165-8826', '12 Mallard Crossing');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (225, 'Peder', 'Chavez', 'pchavez68@fastcompany.com', '797-861-1491', '590 Kings Alley');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (226, 'Judye', 'Bakey', 'jbakey69@huffingtonpost.com', '951-191-1418', '53 Oxford Place');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (227, 'Scott', 'Alwin', 'salwin6a@noaa.gov', '370-140-1229', '47 Del Sol Terrace');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (228, 'Bevin', 'Setchfield', 'bsetchfield6b@yandex.ru', '740-226-2664', '09 Fairfield Trail');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (229, 'Aileen', 'Bilt', 'abilt6c@addtoany.com', '268-540-1378', '062 Rieder Trail');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (230, 'Cosette', 'Dennehy', 'cdennehy6d@google.fr', '814-600-3713', '430 Cherokee Point');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (231, 'Ike', 'Fronczak', 'ifronczak6e@umn.edu', '949-637-6845', '25 Lindbergh Junction');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (232, 'Fenelia', 'Bunkle', 'fbunkle6f@alibaba.com', '868-373-4433', '1 Lighthouse Bay Street');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (233, 'Becka', 'Latour', 'blatour6g@nytimes.com', '168-705-9487', '07 Canary Parkway');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (234, 'Hastings', 'Chadwyck', 'hchadwyck6h@desdev.cn', '484-775-7274', '3305 Haas Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (235, 'Glyn', 'Sigart', 'gsigart6i@cpanel.net', '256-856-3202', '249 Dawn Alley');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (236, 'Alikee', 'Kulic', 'akulic6j@newyorker.com', '319-544-3433', '5 Dexter Trail');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (237, 'Luci', 'Sawden', 'lsawden6k@mysql.com', '551-500-6735', '45511 Bartelt Drive');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (238, 'Dotty', 'Lithcow', 'dlithcow6l@ovh.net', '266-982-9867', '96517 Division Parkway');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (239, 'Allyson', 'Rraundl', 'arraundl6m@histats.com', '707-369-3755', '2108 Glendale Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (240, 'Claiborne', 'Preon', 'cpreon6n@hatena.ne.jp', '339-153-9250', '5 Forster Avenue');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (241, 'Emmery', 'Fingleton', 'efingleton6o@vinaora.com', '480-414-2324', '71886 Scoville Court');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (242, 'Pattin', 'Murphy', 'pmurphy6p@aol.com', '259-770-1468', '9045 Fieldstone Drive');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (243, 'Aila', 'Marquot', 'amarquot6q@twitpic.com', '676-679-3032', '12661 Lyons Place');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (244, 'Demetris', 'Fleet', 'dfleet6r@accuweather.com', '960-343-7930', '9647 Golf Course Way');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (245, 'Goldarina', 'Laboune', 'glaboune6s@shinystat.com', '678-480-0321', '96 Crest Line Lane');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (246, 'Willamina', 'Rainsden', 'wrainsden6t@europa.eu', '916-424-7995', '1 Crowley Pass');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (247, 'Merell', 'Vondrasek', 'mvondrasek6u@sciencedirect.com', '850-749-5190', '467 Ryan Street');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (248, 'Tansy', 'Dyball', 'tdyball6v@phpbb.com', '482-162-1747', '8 Petterle Court');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (249, 'Adriana', 'Piggin', 'apiggin6w@indiatimes.com', '311-710-6511', '136 Oriole Circle');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (250, 'Serene', 'Klagges', 'sklagges6x@netscape.com', '850-220-5378', '608 Truax Drive');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (251, 'Dulciana', 'McCready', 'dmccready6y@themeforest.net', '481-804-4229', '18909 Namekagon Park');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (252, 'Camella', 'Lydiard', 'clydiard6z@trellian.com', '396-711-8551', '5207 Daystar Place');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (253, 'Beatrix', 'Leeuwerink', 'bleeuwerink70@army.mil', '882-863-0171', '96 Burrows Point');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (254, 'Filmer', 'Matitiaho', 'fmatitiaho71@ezinearticles.com', '854-624-3106', '532 Westend Plaza');
insert into Customer (CustomerID, Firstname, LastName, Email, PhoneNumber, Address) values (255, 'Charita', 'Crocken', 'ccrocken72@dedecms.com', '567-713-7689', '373 Beilfuss Parkway');




-- table booking test data
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (1, 125, '4/22/2024', '7:01 AM', 107);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (2, 161, '5/15/2024', '5:00 AM', 185);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (3, 165, '4/22/2024', '5:40 PM', 109);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (4, 213, '12/17/2023', '11:07 AM', 76);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (5, 42, '9/1/2024', '1:28 PM', 84);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (6, 165, '11/24/2023', '8:44 AM', 9);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (7, 178, '4/15/2024', '2:52 PM', 158);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (8, 95, '1/10/2024', '1:06 PM', 239);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (9, 72, '5/10/2024', '2:46 PM', 221);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (10, 157, '3/23/2024', '8:06 PM', 253);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (11, 23, '12/19/2023', '3:17 PM', 154);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (12, 84, '12/7/2023', '7:52 AM', 112);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (13, 58, '4/4/2024', '11:58 AM', 181);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (14, 193, '7/31/2024', '7:43 PM', 178);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (15, 226, '4/28/2024', '5:07 PM', 255);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (16, 135, '3/14/2024', '3:32 PM', 10);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (17, 254, '12/11/2023', '7:22 AM', 8);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (18, 92, '9/21/2024', '1:42 PM', 154);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (19, 156, '12/28/2023', '3:22 PM', 20);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (20, 162, '10/30/2023', '3:20 PM', 195);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (21, 115, '4/6/2024', '6:41 AM', 173);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (22, 115, '1/14/2024', '5:54 PM', 180);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (23, 93, '12/27/2023', '2:32 PM', 24);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (24, 152, '1/29/2024', '2:18 PM', 55);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (25, 52, '9/13/2024', '4:08 PM', 179);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (26, 167, '4/21/2024', '3:11 PM', 161);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (27, 205, '12/9/2023', '12:11 PM', 130);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (28, 73, '3/19/2024', '10:35 AM', 80);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (29, 122, '12/18/2023', '5:28 AM', 201);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (30, 117, '7/4/2024', '3:49 PM', 5);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (31, 28, '5/2/2024', '7:54 AM', 229);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (32, 36, '8/19/2024', '6:36 AM', 37);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (33, 70, '2/26/2024', '5:07 PM', 83);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (34, 20, '4/29/2024', '3:26 PM', 52);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (35, 32, '7/9/2024', '5:21 PM', 36);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (36, 240, '5/26/2024', '8:46 AM', 206);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (37, 24, '2/2/2024', '7:29 PM', 26);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (38, 76, '3/6/2024', '8:02 AM', 18);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (39, 240, '11/29/2023', '1:11 PM', 55);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (40, 202, '10/24/2023', '10:56 AM', 143);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (41, 254, '2/11/2024', '7:13 PM', 74);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (42, 203, '10/10/2023', '7:24 PM', 237);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (43, 185, '11/11/2023', '8:42 AM', 119);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (44, 14, '4/30/2024', '9:16 AM', 238);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (45, 121, '4/11/2024', '7:20 AM', 244);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (46, 177, '4/5/2024', '7:18 PM', 218);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (47, 115, '11/5/2023', '6:14 AM', 218);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (48, 225, '9/22/2024', '9:55 AM', 115);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (49, 166, '12/2/2023', '12:03 PM', 231);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (50, 117, '10/25/2023', '8:01 PM', 98);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (51, 188, '5/23/2024', '8:49 AM', 246);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (52, 212, '9/11/2024', '11:02 AM', 173);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (53, 34, '9/12/2024', '10:50 AM', 95);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (54, 161, '7/21/2024', '8:32 PM', 248);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (55, 23, '5/14/2024', '4:08 PM', 52);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (56, 44, '12/7/2023', '5:05 PM', 120);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (57, 155, '5/2/2024', '8:47 PM', 5);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (58, 42, '8/6/2024', '7:07 AM', 189);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (59, 163, '6/23/2024', '5:28 PM', 250);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (60, 141, '10/29/2023', '6:34 AM', 16);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (61, 104, '2/22/2024', '7:15 AM', 207);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (62, 140, '9/4/2024', '8:26 AM', 89);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (63, 192, '7/29/2024', '6:41 PM', 139);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (64, 222, '2/8/2024', '3:17 PM', 88);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (65, 62, '4/6/2024', '12:39 PM', 122);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (66, 168, '12/23/2023', '12:38 PM', 59);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (67, 168, '11/13/2023', '12:07 PM', 197);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (68, 167, '7/27/2024', '3:17 PM', 149);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (69, 61, '5/28/2024', '5:36 AM', 222);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (70, 167, '2/17/2024', '5:15 PM', 26);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (71, 54, '5/18/2024', '10:33 AM', 4);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (72, 185, '1/5/2024', '9:55 AM', 6);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (73, 197, '10/8/2023', '5:13 AM', 34);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (74, 167, '8/13/2024', '12:36 PM', 184);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (75, 97, '11/24/2023', '11:46 AM', 126);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (76, 99, '4/26/2024', '1:46 PM', 185);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (77, 213, '3/16/2024', '2:53 PM', 176);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (78, 177, '3/2/2024', '5:34 AM', 135);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (79, 33, '12/21/2023', '7:23 AM', 169);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (80, 113, '2/26/2024', '7:52 PM', 245);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (81, 158, '4/27/2024', '8:49 PM', 55);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (82, 242, '1/17/2024', '9:42 AM', 180);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (83, 5, '11/30/2023', '12:23 PM', 251);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (84, 2, '6/26/2024', '1:24 PM', 55);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (85, 214, '12/7/2023', '5:05 PM', 26);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (86, 85, '8/15/2024', '9:34 AM', 121);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (87, 156, '1/29/2024', '12:02 PM', 112);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (88, 37, '8/6/2024', '8:08 AM', 68);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (89, 16, '8/27/2024', '11:33 AM', 115);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (90, 241, '5/18/2024', '4:00 PM', 115);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (91, 105, '8/28/2024', '9:30 AM', 32);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (92, 237, '8/29/2024', '8:06 PM', 231);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (93, 1, '2/15/2024', '11:02 AM', 232);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (94, 156, '2/1/2024', '7:15 AM', 167);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (95, 108, '3/28/2024', '8:50 PM', 14);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (96, 12, '9/18/2024', '5:00 PM', 36);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (97, 140, '11/18/2023', '12:17 PM', 90);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (98, 84, '12/12/2023', '1:36 PM', 23);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (99, 47, '5/28/2024', '3:22 PM', 61);
insert into TableBooking (TableBookingID, TableNumber, BookingDate, BookingTime, NumberOfGuests) values (100, 52, '5/15/2024', '3:30 PM', 214);



-- postal code test data
insert into PostalCode (PostalCode, City) values ('59500-000', 'Macau');
insert into PostalCode (PostalCode, City) values ('L-6231', 'Bech');
insert into PostalCode (PostalCode, City) values ('G8V', 'Gravelbourg');
insert into PostalCode (PostalCode, City) values ('4324', 'Pagsañgahan');
insert into PostalCode (PostalCode, City) values ('30430', 'Sida');
insert into PostalCode (PostalCode, City) values ('191017', 'Buenos Aires');
insert into PostalCode (PostalCode, City) values ('B2V', 'Catalina');
insert into PostalCode (PostalCode, City) values ('1706', 'Pulo');
insert into PostalCode (PostalCode, City) values ('35513 CEDEX', 'Cesson-Sévigné');
insert into PostalCode (PostalCode, City) values ('671633', 'Logovskoye');


