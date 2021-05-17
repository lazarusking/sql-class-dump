--begin tran
use [COMPANY_9406619];
GO
INSERT INTO EMPLOYEE VALUES ('John', 'B', 'Smith', '123456789', '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000, '333445555', 5)
INSERT INTO EMPLOYEE VALUES ('Alicia', 'J', 'Zelaya', '999887777', '1968-01-19', '3321 Castle, Spring, Tx', 'F', 25000, '987654321', 4)
INSERT INTO EMPLOYEE VALUES ('Jennifer', 'S', 'Wallace', '987654321', '1941-06-20', '291 Berry, Bellaire, Tx', 'F', 43000, '888665555', 4)
INSERT INTO EMPLOYEE VALUES ('Ramesh', 'K', 'Narayan', '666884444', '1962-09-15', '975 Fire Oak, Humble, TX', 'M', 30000, '333445555', 5)
INSERT INTO EMPLOYEE VALUES ('Joyce', 'A', 'English', '453453453', '1972-07-31', '5631 Rice, Houston, TX', 'F', 25000, '333445555', 5)
INSERT INTO EMPLOYEE VALUES ('Ahmad', 'V', 'Jabbar', '987987987', '1969-03-29', '980 Dallas, Houston, TX', 'M', 26000, '987654921', 4)
INSERT INTO EMPLOYEE VALUES ('James', 'E', 'Borg', '888665555', '1937-11-10', '450 Stone, Houston, TX', 'M', 55000, NULL, 1)
INSERT INTO EMPLOYEE VALUES ('Franklin', 'T', 'Wong', '333445555', '1955-12-08', '638 Voss, Houston, TX', 'M', 40000, '888665555', 5)

INSERT INTO DEPARTMENT VALUES ('Research', '5', '333445555', '1988-05-22')
INSERT INTO DEPARTMENT VALUES ('Administration', '4', '987654321', '1995-01-01')
INSERT INTO DEPARTMENT VALUES ('Headquaters', '1', '888665555', '1981-06-19')

insert into DEPT_LOCATIONS
values('1','Houston'),
      ('4','Stafford'),
	  ('5','Bellaire'),
	  ('5','Sugarland'),
	  ('5','Houston');

insert into PROJECT
values('ProductX',1,'Bellaire',5),
      ('ProductY',2,'Sugarland',5),
	  ('ProductZ',3,'Houston',5),
	  ('Computerization',10,'Stafford',4),
	  ('Reorganization',20,'houston',1),
	  ('Newbenefits',30,'Stafford',4);

--insert into WORKS_ON
--values(123456789,1,32.5),
--      (123456789,2,7.5),
--	  (666884444,3,40.5),
--	  (453453453,1,20.0),
--	  (453453453,2,20.0),
--	  (333445555,2,10.0),
--	  (333445555,3,10.0),
--	  (333445555,10,10.0),
--	  (999887777,30,30.0),
--	  (999887777,10,31.0),
--	  (987987987,10,35.0),
--	  (987987987,30,5.0),
--	  (987654321,30,20.0),
--	  (987654321,20,15.0),
--	  (888665555,20,null);

--insert into DEPENDENT
--values('Alice', 333445555, 'F','1986-04-05','daughter'),
--      ('Theodore', 333445555, 'M','1983-10-25','son'),
--	  ('Joy', 333445555, 'F','1958-05-03','spouse'),
--	  ('Aber', 987654321, 'M','1942-02-28','spouse'),
--	  ('Micheal', 123456789, 'M','1988-01-04','son'),
--	  ('Alica', 123456789, 'F','1988-12-30','daughter'),
--	  ('Elizabeth', 123456789,'F','1967-05-05','spouse');
insert into DEPENDENT
values( 333445555,'Alice', 'F','1986-04-05','daughter'),
      ( 333445555,'Theodore', 'M','1983-10-25','son'),
	  (333445555,'Joy',  'F','1958-05-03','spouse'),
	  ( 987654321,'Aber', 'M','1942-02-28','spouse'),
	  (123456789,'Micheal', 'M','1988-01-04','son'),
	  ( 123456789,'Alica', 'F','1988-12-30','daughter'),
	  ( 123456789,'Elizabeth','F','1967-05-05','spouse');
insert into WORKS_ON
values(123456789,1,32.5),
      (123456789,2,7.5),
	  (666884444,3,40.5),
	  (453453453,1,20.0),
	  (453453453,2,20.0),
	  (333445555,2,10.0),
	  (333445555,3,10.0),
	  (333445555,10,10.0),
	  (999887777,30,30.0),
	  (999887777,10,31.0),
	  (987987987,10,35.0),
	  (987987987,30,5.0),
	  (987654321,30,20.0),
	  (987654321,20,15.0),
	  (888665555,20,null);
go
select * from EMPLOYEE;
select * from PROJECT;
select * from DEPARTMENT;
select * from DEPT_LOCATIONS;
select * from WORKS_ON;
select * from DEPENDENT;
--rollback tran
