SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;


#CASE STATEMENTS
SELECT CONCAT(first_name," ",last_name) AS FULLNAME,
CASE 
WHEN age < 30 THEN "Young" 
WHEN age BETWEEN 31 AND 49 THEN "OLD" 
WHEN age >= 50 THEN "Bed Rest"
END AS LABEL
FROM employee_demographics
ORDER BY first_name;


-- ANSWER
SELECT CONCAT(first_name," ", last_name), salary,
CASE 
WHEN salary < 50000 THEN salary * 1.05
WHEN salary > 50000 THEN Salary * 1.07
END AS NEW_SALARY_CAP
FROM employee_salary;
