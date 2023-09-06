-- find nth highest salary from employee table
-- 1. RETRIVE 3 rd highest salary from employee table(1.1,1.2 run on SQL server and 1.3 and 1.2 applicable in MYSQL Server)
--1.1
SELECT MIN(SALARY) FROM Employee 
WHERE SALARY IN (SELECT TOP(3) SALARY FROM Employee ORDER BY SALARY DESC);
--1.2
SELECT MAX(SALARY) AS [THIRD HIGHEST] FROM Employee
WHERE SALARY <(SELECT MAX(SALARY) FROM Employee WHERE SALARY<(SELECT MAX(SALARY) FROM Employee));
--1.3
SELECT SALARY FROM Employee ORDER BY SALARY DESC LIMIT 2,1;


--2 Write a SQL query to find top n records?
SELECT SALARY FROM EmployEe ORDER BY SALARY DESC;

-- 3> Write a SQL query to find the count of employees working in department 'Admin'(run on both sql server and mysql server)
SELECT COUNT(*) FROM Employee WHERE DEPARTMENT='Admin';  


-- 4> Write a SQL query to fetch department wise count employees sorted by department count in desc order.
SELECT DEPARTMENT, COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY DEPARTMENT
ORDER BY EmployeeCount
DESC;



