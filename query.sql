-- find nth highest salary from employee table
SELECT DISTINCT(SALARY) AS [NTH HIGHEST SALARY] FROM Employee ORDER BY SALARY DESC;

--RETRIVE 3 rd highest salary from employee table
SELECT MIN(SALARY) FROM Employee 
WHERE SALARY IN (SELECT TOP(3) SALARY FROM Employee ORDER BY SALARY DESC);