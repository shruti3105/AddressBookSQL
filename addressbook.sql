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
