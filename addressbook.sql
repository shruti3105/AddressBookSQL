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

#UC7
SELECT COUNT(city) FROM addressbook;
SELECT COUNT(state) FROM addressbook;

#UC8
SELECT * FROM addressbook WHERE city='Kanpur' ORDER BY firstname;
#inserting more data
INSERT INTO addressbook VALUES
('Prakhar','Sharma','500 road','Shimla','Himachal Pradesh',20562,9034567536,'mno@ty.com'),
('Shalini','Sachdeva','12 lane','Bhopal','Madhya Pradesh',96363,7774567536,'sha@uv.com'),
('Joseph','Diaz','111 town','Lucknow','Uttar Pradesh',77443,9876542485,'wer@qq.com');

#UC9
ALTER TABLE addressbook ADD type CHAR(150);
#updating data
UPDATE addressbook SET type='Friends' WHERE firstname='Vansh';
UPDATE addressbook SET type='Profession' WHERE firstname='Shalini';
UPDATE addressbook SET type='Profession' WHERE firstname='Prakhar';
UPDATE addressbook SET type='Family' WHERE firstname='Joseph';
UPDATE addressbook SET type='Friends' WHERE firstname='Anish';

#UC10
SELECT type,COUNT(type) FROM addressbook GROUP BY type;

#UC11
INSERT INTO addressbook VALUES
('Preerna','Tiwari','abc town','Bangalore','Karnataka',99963,9874567536,'ash@cv.com','Family'),
('Preerna','Tiwari','abc town','Bangalore','Karnataka',99963,9874567536,'ash@cv.com','Friends');
#not possible as email is a primary key and cannot be repeated
