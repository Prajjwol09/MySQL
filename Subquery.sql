SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;

#SUBQUERIES
SELECT *
FROM employee_demographics
WHERE employee_id IN (
                    SELECT employee_id
                    FROM employee_salary
                    WHERE dept_id = 1
);


SELECT first_name, salary,
(SELECT AVG(salary) 
FROM employee_salary) AVG_SALARY
FROM employee_salary
GROUP BY first_name, salary;






