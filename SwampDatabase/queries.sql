# CREATE DB
CREATE DATABASE swamp;

# DROP TABLES
DROP TABLE User;
DROP TABLE User_Account;
DROP TABLE Bin;
DROP TABLE Recycled;
DROP TABLE User_Bin;

# CREATE TABLES
CREATE TABLE User (
	username VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
PRIMARY KEY (username)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE User_Account (
	username VARCHAR(255) NOT NULL,
	name VARCHAR(255) NOT NULL,
    surname VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    totalRecycled DOUBLE(11,2) NOT NULL,
    monthlyRecycled DOUBLE(11,2) NOT NULL,
PRIMARY KEY (username)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE Bin (
	id VARCHAR(255) NOT NULL,
	locX DOUBLE(11,2) NOT NULL,
	locY DOUBLE(11,2) NOT NULL,
PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE Recycled (
	binId VARCHAR(255) NOT NULL,
	username VARCHAR(255) NOT NULL,
	amount DOUBLE(11,2)  NOT NULL,
	dt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (binId, username, dt)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

CREATE TABLE User_Bin (
	username VARCHAR(255) NOT NULL,
	binId VARCHAR(255) NOT NULL,
	amount DOUBLE(11,2)  NOT NULL,
PRIMARY KEY (username, binId)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


# DELETE TABLES
DELETE FROM User;
DELETE FROM User_Account;
DELETE FROM Bin;
DELETE FROM Recycled;
DELETE FROM User_Bin;

# SHOW TABLES
SELECT * FROM User; 
SELECT * FROM User_Account;
SELECT * FROM Bin;
SELECT * FROM Recycled;
SELECT * FROM User_Bin;