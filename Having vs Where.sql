SELECT *
FROM employee_demographics;

# HAVING VS WHERE
SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 39;


SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE "%manager%"
GROUP BY occupation
HAVING AVG(salary) > 65000;

