SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;


#CTE - Common Table Expression
WITH CTE_EXAMPLE AS
(
SELECT gender, AVG(salary) avg_salary, MAX(salary) max_salary, MIN(salary) min_salary, COUNT(salary) count_salary
FROM employee_demographics DEM
JOIN employee_salary SAL
ON DEM.employee_id = SAL.employee_id
GROUP BY gender
)
SELECT AVG(avg_salary)
FROM CTE_EXAMPLE;



-- CREATING MULTIPLE CTE'S
WITH CTE_EXAMPLE AS
(
SELECT employee_id, gender, birth_date
FROM employee_demographics 
WHERE birth_date > '1985-01-01'
),
CTE_EXAMPLE2 AS 
(
SELECT employee_id, first_name, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_EXAMPLE AS ONEE
JOIN CTE_EXAMPLE2 AS TWO
ON ONEE.employee_id = two.employee_id
;




