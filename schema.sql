-- database created
CREATE DATABASE Interview;


-- created a table employee with attribute
CREATE TABLE Employee (
	EMPLOYEE_ID INT IDENTITY(1,1) ,
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
		('James', 'Smith', 100000, '9/5/2023 09:00:00', 'HR', 002),
		('Jessica', 'Kohl', 80000, '9/5/2023 09:00:00', 'Admin', 005),
		('Alex', 'Garner', 300000, '9/5/2023 09:00:00', 'HR', 011),
		('Pratik', 'Pandey', 500000, '9/5/2023 09:00:00', 'Admin', 020),
		('Christine', 'Robinson', 500000, '9/5/2023 09:00:00', 'Admin', 007),
		('Deepak', 'Gupta', 200000, '9/5/2023 09:00:00', 'Account', 015),
		( 'Jennifer', 'Paul', 75000, '9/5/2023 09:00:00', 'Account', 012),
		( 'Deepika', 'Sharma', 90000, '9/5/2023 09:00:00', 'Admin', 017);

