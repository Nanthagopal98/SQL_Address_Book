--UC-1
CREATE DATABASE Address_Book	
SELECT * FROM SYS.databases
USE Address_Book

--UC-2
CREATE TABLE AddressBook(
S_NO INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
FIRST_NAME VARCHAR(20) NOT NULL,
LAST_NAME VARCHAR(20) NOT NULL,
ADDRESS VARCHAR(50) NOT NULL,
CITY VARCHAR(20) NOT NULL,
STATE VARCHAR(20) NOT NULL,
PIN INT NOT NULL,
PHONE INT NOT NULL,
EMAIL VARCHAR(40) NOT NULL
)
SELECT * FROM AddressBook

--UC-3
ALTER TABLE AddressBook ALTER COLUMN PHONE FLOAT
INSERT INTO AddressBook VALUES('NANTHAGOPAL','SHANMUGAM','NO 1 - COIMBATORE','COIMBATORE','TAMILNADU',656598,7894561230,'nantha@gmail.com') 
INSERT INTO AddressBook VALUES ('Ela','Appu','NO 2, Ela Address','Salem','Tamilnadu',654512,9856231478,'ela@gmail.com')
INSERT INTO AddressBook VALUES ('Priya','Reddy','NO 3, Priya Address','Palakkad','Kerala',565626,9523648952,'priya@gmail.com')
INSERT INTO AddressBook VALUES ('Ramya','Dhurai','NO 4, Pamya Address','Bangalore','Karnataka',564423,7842338370,'ramya@gmail.com')
