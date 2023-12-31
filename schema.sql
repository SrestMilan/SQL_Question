-- database created
CREATE DATABASE Interview;

-- Use above database
USE Interview;
-- created a table employee with attribute
CREATE TABLE Employee (
	EMPLOYEE_ID INT AUTO_INCREMENT ,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT,
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25), 
    MANAGER_ID INT,
	PRIMARY KEY (EMPLOYEE_ID)
	
);

-- added data into employee table

INSERT INTO Employee
	( FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT,MANAGER_ID) VALUES
		('James', 'Smith', 100000, '2014-04-02 09:00:00', 'HR', 002),
		('Jessica', 'Kohl', 80000, '2014-04-02 09:00:00', 'Admin', 005),
		('Alex', 'Garner', 300000, '2014-04-02 09:00:00', 'HR', 011),
		('Pratik', 'Pandey', 500000, '2014-04-02 09:00:00', 'Admin', 020),
		('Christine', 'Robinson', 500000, '2014-04-02 09:00:00', 'Admin', 007),
		('Deepak', 'Gupta', 200000, '2014-04-02 09:00:00', 'Account', 015),
		( 'Jennifer', 'Paul', 75000, '2014-04-02 09:00:00', 'Account', 012),
		( 'Deepika', 'Sharma', 90000, '2014-04-02 09:00:00', 'Admin', 017);
	

-- created table Salary with foreign key i.e. EMPLOYEE_REF_ID takes refrences EMPLOYEE_ID from parent table Employee--
CREATE TABLE Salary (
	EMPLOYEE_REF_ID INT,
	SALARY_AMOUNT INT,
	SALARY_DATE DATETIME,
	FOREIGN KEY (EMPLOYEE_REF_ID)
		REFERENCES Employee(EMPLOYEE_ID)
        ON DELETE CASCADE
);

-- Inserted values in salary table
INSERT INTO Salary
	(EMPLOYEE_REF_ID, SALARY_AMOUNT, SALARY_DATE) VALUES
		(1, 5000, '18:02:20'),
		(2, 3000, '18:06:11'),
		(3, 4000, '18:02:20'),
		(1, 4500, '18:02:20'),
		(2, 3500, '18:06:11');


-- created a table title with foreign key
CREATE TABLE Title (
	EMPLOYEE_REF_ID INT,
	EMPLOYEE_TITLE CHAR(25),
	AFFECT_FROM DATETIME,
	FOREIGN KEY (EMPLOYEE_REF_ID)
		REFERENCES Employee(EMPLOYEE_ID)
        ON DELETE CASCADE
);

-- inserted values in title table
INSERT INTO Title 
	(EMPLOYEE_REF_ID, EMPLOYEE_TITLE, AFFECT_FROM) VALUES
 (1, 'Manager', '2018-02-20 00:00:00'),
 (2, 'Executive', '2018-06-11 00:00:00'),
 (8, 'Executive', '2018-06-11 00:00:00'),
 (5, 'Manager', '2018-06-11 00:00:00'),
 (4, 'Asst. Manager', '2018-06-11 00:00:00'),
 (7, 'Executive', '2018-06-11 00:00:00'),
 (6, 'Lead', '2018-06-11 00:00:00'),
 (3, 'Lead', '2018-06-11 00:00:00');
