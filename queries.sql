CREATE DATABASE springmybatis;

USE springmybatis;

CREATE TABLE employee
(
	id INT NOT PRIMARY KEY AUTO_INCREATE,
	
	fullname VARCHAR(50) NOT NULL,
	
	email VARCHAR(50) NOT NULL,
	
	gender VARCHAR(50) NOT NULL,
	
	hobbies VARCHAR(50) NOT NULL,
	
	coutry VARCHAR(50) NOT NULL,
);