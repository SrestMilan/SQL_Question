-- find nth highest salary from employee table
SELECT DISTINCT(SALARY) AS [Number of HIGHEST SALARY] FROM Employee ORDER BY SALARY DESC;

--RETRIVE 3 rd highest salary from employee table(1st,2nd run on SQL server and 3rd applicable in MYSQL Server)
--1
SELECT MIN(SALARY) FROM Employee 
WHERE SALARY IN (SELECT TOP(3) SALARY FROM Employee ORDER BY SALARY DESC);

--2
SELECT MAX(SALARY) AS [THIRD HIGHEST] FROM Employee
WHERE SALARY <(SELECT MAX(SALARY) FROM Employee WHERE SALARY<(SELECT MAX(SALARY) FROM Employee));


--3
SELECT SALARY FROM Employee ORDER BY SALARY DESC LIMIT 2,1;