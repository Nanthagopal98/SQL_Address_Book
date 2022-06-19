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