SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;

#UNION
SELECT first_name, last_name, "Old Man" as LABEL
FROM employee_demographics
WHERE age > 40 AND gender = "Male"
UNION 
SELECT first_name, last_name, "Old Lady" as LABEL
FROM employee_demographics
WHERE age > 40 AND gender = "Female"
UNION
SELECT first_name, last_name, "Highly Paid " as LABEL
FROM employee_salary
WHERE salary > 65000
ORDER BY first_name, last_name;
