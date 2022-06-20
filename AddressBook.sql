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
INSERT INTO AddressBook VALUES ('Ravi','SHAN','NO 5, Ravi Address','COIMBATORE','TAMILNADU',658696,8855226699,'ravi@gmail.com')
INSERT INTO AddressBook VALUES ('Senthil','Dhurai','NO 4, Pamya Address','COIMBATORE','TAMILNADU',632145,9988332259,'senthil@gmail.com')

--UC-4
UPDATE AddressBook SET ADDRESS = 'UPDATED ADDRESS' WHERE FIRST_NAME = 'NANTHAGOPAL'

--UC-5
DELETE FROM AddressBook WHERE FIRST_NAME = 'Priya'

--UC-6
SELECT * FROM AddressBook WHERE CITY ='COIMBATORE'
SELECT * FROM AddressBook WHERE STATE = 'Tamilnadu'

--UC-7
SELECT CITY, COUNT(CITY) AS TOTAL_COUNT FROM AddressBook GROUP BY CITY
SELECT STATE, COUNT(STATE) AS TOTAL_STATE_COUNT FROM AddressBook GROUP BY STATE


--UC-8
SELECT * FROM AddressBook WHERE CITY = 'COIMBATORE' ORDER BY FIRST_NAME ASC

SELECT * FROM AddressBook

--UC-9
ALTER TABLE AddressBook ADD CONTACT_TYPE VARCHAR(20) NOT NULL DEFAULT ('')
UPDATE AddressBook SET CONTACT_TYPE = 'FAMILY' WHERE FIRST_NAME = 'NANTHAGOPAL'
UPDATE AddressBook set contact_type = 'FRIEND' WHERE FIRST_NAME = 'Ela'
UPDATE AddressBook SET CONTACT_TYPE = 'FAMILY' WHERE FIRST_NAME = 'Ramya'
UPDATE AddressBook SET CONTACT_TYPE = 'FRIEND' WHERE FIRST_NAME = 'Ravi'
UPDATE AddressBook SET CONTACT_TYPE = 'FAMILY' WHERE FIRST_NAME = 'Senthil'
SELECT CONTACT_TYPE, COUNT(CONTACT_TYPE) AS TOTAL_COUNT FROM AddressBook GROUP BY CONTACT_TYPE
SELECT * FROM AddressBook WHERE CONTACT_TYPE = 'FRIEND' ORDER BY FIRST_NAME ASC 

--UC-10
SELECT CONTACT_TYPE, COUNT(CONTACT_TYPE) AS TOTAL_COUNT FROM AddressBook GROUP BY CONTACT_TYPE

--UC-11

INSERT INTO AddressBook VALUES ('HARI','SATHY','NO 4, HARI Address','COIMBATORE','TAMILNADU',632145,8956784520,'hari@gmail.com','FRIEND')
INSERT INTO AddressBook VALUES ('HARI','SATHY','NO 4, HARI Address','COIMBATORE','TAMILNADU',632145,8956784520,'hari@gmail.com','FRIEND')

--UC-12

CREATE TABLE CONTACT_DETAILS(
CONTACT_ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
FIRSE_NAME VARCHAR(25) NOT NULL,
LAST_NAME VARCHAR(25) NOT NULL,
ADDRESS VARCHAR(50) NOT NULL,
CITY VARCHAR(20),
STATE VARCHAR(20),
PIN INT NOT NULL,
EMAIL VARCHAR(25),
)
SELECT * FROM CONTACT_DETAILS

INSERT INTO CONTACT_DETAILS (FIRSE_NAME,LAST_NAME,ADDRESS,CITY,STATE,PIN,EMAIL) VALUES ('NANTHAGOPAL','SHANMUGAM','NO 1 - COIMBATORE','COIMBATORE','TAMILNADU',656598,'nantha@gmail.com')
INSERT INTO CONTACT_DETAILS VALUES ('ELA','APPU','NO 2, ELA ADDRESS','SALEM','TAMILNADU',654512,'ela@gmail.com')
INSERT INTO CONTACT_DETAILS VALUES ('PRIYA','REDDY','NO 3, PRIYA ADDRESS','PALAKKAD','KERALA',565626,'priya@gmail.com')
INSERT INTO CONTACT_DETAILS VALUES ('RAMYA','DHURAI','NO 4,  ADDRESS','BANGALORE','KARNATAKA',564423,'ramya@gmail.com')
INSERT INTO CONTACT_DETAILS VALUES ('RAVI','SHAN','NO 5, RAVI ADDRESS','COIMBATORE','TAMILNADU',658696,'ravi@gmail.com')
INSERT INTO CONTACT_DETAILS VALUES ('SENTHIL','DHURAI','NO 4, SENTHIL ADDRESS','COIMBATORE','TAMILNADU',632145,'senthil@gmail.com')

CREATE TABLE CONTACT_TYPE(
CONTACT_ID INT NOT NULL,
CONTACT_GROUP VARCHAR(20) NOT NULL,
)
SELECT * FROM CONTACT_TYPE

INSERT INTO CONTACT_TYPE VALUES (1,'FAMILY')
INSERT INTO CONTACT_TYPE VALUES (2,'FRIEND')
INSERT INTO CONTACT_TYPE VALUES (3,'FAMILY')
INSERT INTO CONTACT_TYPE VALUES (4,'FRIEND')
INSERT INTO CONTACT_TYPE VALUES (5,'FAMILY')
INSERT INTO CONTACT_TYPE VALUES (6,'FRIEND')

CREATE TABLE PHONE_NUMBER(
CONTACT_ID INT NOT NULL,
PRIMARY_NUMBER FLOAT NOT NULL,
SECONDARY_NUMBER FLOAT,
)
SELECT * FROM PHONE_NUMBER

INSERT INTO PHONE_NUMBER VALUES (1,9876543210,9876543210)
INSERT INTO PHONE_NUMBER VALUES (2,7894561230, NULL)
INSERT INTO PHONE_NUMBER VALUES (3,8527419630,9876543210)
INSERT INTO PHONE_NUMBER VALUES (4,9632584176, NULL)
INSERT INTO PHONE_NUMBER VALUES (5,7532149562, NULL)
INSERT INTO PHONE_NUMBER VALUES (6,6589423563,9876543210)

