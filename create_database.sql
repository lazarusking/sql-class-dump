--DROP DATABASE IF EXISTS [COMPANY_9406619]; --use index number 
--GO
-- remove GO ,it only works on MS SQL I think 
CREATE DATABASE [COMPANY_your_index] -- use index number
GO
--begin tran (code between begin is run temporarily, use for testing )
--DROP TABLE IF EXISTS EMPLOYEE;
--DROP TABLE IF EXISTS DEPARTMENT;
--DROP TABLE IF EXISTS DEPT_LOCATIONS;
--DROP TABLE IF EXISTS PROJECT;
--DROP TABLE IF EXISTS WORKS_ON;
--DROP TABLE IF EXISTS [DEPENDENT];

USE [COMPANY_your_index]
CREATE TABLE EMPLOYEE (
  Fname VARCHAR(255),
  Minit VARCHAR(3),
  Lname VARCHAR(255),
  Ssn int NOT NULL PRIMARY KEY,
  Bdate DATE,
  Address VARCHAR(255),
  Sex CHAR(1),
  Salary int,
  Super_ssn int ,
  Dno int ,  
);
CREATE TABLE DEPARTMENT(
    Dname VARCHAR(50),    
    Dnumber int NOT NULL PRIMARY KEY,
    Mgr_ssn int , 
    Mgr_start_date DATE,    
);
CREATE TABLE DEPT_LOCATIONS(
    Dnumber int NOT NULL REFERENCES DEPARTMENT(Dnumber),
    Dlocation VARCHAR(50),
);
CREATE TABLE PROJECT(
    Pname VARCHAR(20),
    Pnumber int NOT NULL PRIMARY KEY,
    Plocation varchar(50),
    Dnum int NOT NULL FOREIGN KEY REFERENCES DEPARTMENT(Dnumber), 
);
CREATE TABLE WORKS_ON(
    Essn int NOT NULL FOREIGN KEY REFERENCES EMPLOYEE(Ssn),
    Pno int NOT NULL FOREIGN KEY REFERENCES PROJECT(Pnumber),
    Hours float,
);
CREATE TABLE [DEPENDENT] (
    Essn int NOT NULL FOREIGN KEY REFERENCES EMPLOYEE(Ssn),
    Dependent_name varchar(50) UNIQUE,
    Sex char(1),
    Bdate date,
    Relationship varchar(50), 
);
--select * from EMPLOYEE;
GO
--rollback tran
