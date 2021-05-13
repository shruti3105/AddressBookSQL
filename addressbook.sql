#UC1
CREATE DATABASE addressbookservicedb;
SHOW DATABASES;
USE addressbookservicedb;

#UC2
CREATE TABLE addressbook
(
firstname CHAR(150) NOT NULL,
lastname CHAR(150),
address VARCHAR(500) NOT NULL,
city CHAR(150) NOT NULL,
state CHAR(150),
zip INT(5),
phoneno INT(10),
email VARCHAR(150),
PRIMARY KEY(phoneno)
);

#UC3
INSERT INTO addressbook VALUES
('Anish','Goel','234 road','Kanpur','Uttar Pradesh',24562,1234567536,'abc@sv.com'),
('Shivansh','Singh','345 lane','Pune','Maharashtra',12345,765687536,'pqr@sin.com'),
('Vansh','Mishra','11 side','Dehradun','Uttarakhand',12568,576437436,'pqr@ch.com');

#UC4
UPDATE addressbook SET lastname='Shukla' WHERE firstname='Vansh';

#UC5
DELETE FROM addressbook WHERE firstname='Shivansh';

#UC6
SELECT * FROM addressbook WHERE city='Kanpur' OR state='Uttarakhand';
