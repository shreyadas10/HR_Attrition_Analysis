-- creating database
CREATE DATABASE hr_attrition;

-- using the database 'hr_attrition'
USE hr_attrition;

-- analysing all the rows and column from the database
select * from hr_attrition_clean;

-- total number of employees 
SELECT COUNT(*) AS num_of_employees 
FROM hr_attrition_clean ;  

-- number of employees left
SELECT COUNT(*) AS employees_left 
FROM hr_attrition_clean 
WHERE Attrition ='Yes';

-- calculates total employees , employees left and attrition rate for each gender
SELECT Gender,
COUNT(*) AS total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS attrition_rate
FROM hr_attrition_clean
GROUP BY Gender;

-- calculates total employees , employees left and attrition rate for each Department
SELECT Department,
COUNT(*) AS total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employee_left,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS attrition_rate
FROM hr_attrition_clean
GROUP BY  Department 
ORDER BY attrition_rate DESC;

--  calculates total employees , employees left and attrition rate for each Education field
SELECT EducationField ,
COUNT(*) AS total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employee_left,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) , 2) AS attrition_rate
FROM hr_attrition_clean
GROUP BY EducationField
ORDER BY  attrition_rate DESC ;

-- calculates total employees , employees left and attrition rate for each Education Level
SELECT Education_level,
COUNT(*) AS total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employee_left,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) , 2) AS attrition_rate
FROM hr_attrition_clean
GROUP BY Education_level
ORDER BY  attrition_rate DESC ;

-- calculates total employees , employees left and attrition rate for each Business Travel
SELECT BusinessTravel,
COUNT(*) AS total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employee_left,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM hr_attrition_clean
GROUP BY BusinessTravel
ORDER BY attrition_rate DESC;

-- calculates total employees , employees left and attrition rate for each Job Role
SELECT JobRole,
COUNT(*) AS total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employee_left,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM hr_attrition_clean
GROUP BY JobRole
ORDER BY attrition_rate DESC;

-- calculates total employees , employees left and attrition rate for work life balance
SELECT WorkLifeBalance,
COUNT(*) AS total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employee_left,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM hr_attrition_clean
GROUP BY WorkLifeBalance
ORDER BY attrition_rate DESC;

-- calculates total employees , employees left and attrition rate for Marital status
SELECT MaritalStatus,
COUNT(*) AS total_employees,
SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employee_left,
ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM hr_attrition_clean
GROUP BY MaritalStatus
ORDER BY attrition_rate DESC;



