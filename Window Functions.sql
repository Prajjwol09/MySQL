SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;

#WINDOW FUNCTIONS
SELECT DEMO.first_name,DEMO.last_name, gender, 
AVG(salary) OVER(PARTITION BY gender) 
FROM employee_demographics DEMO
JOIN employee_salary SAL
ON DEMO.employee_id = SAL. employee_id;


-- USE OF ROLLING TOTAL
SELECT DEMO.first_name,DEMO.last_name, gender, SAL.salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY DEMO.employee_id) AS Rolling_Total
FROM employee_demographics DEMO
JOIN employee_salary SAL
ON DEMO.employee_id = SAL. employee_id;


-- ROW_NUMBER, RANK, DENSE_RANK
SELECT DEMO.employee_id, DEMO.first_name, DEMO.last_name, gender, SAL.salary,
ROW_NUMBER() OVER (PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER (PARTITION BY gender ORDER BY salary DESC) AS rank_num,
DENSE_RANK() OVER (PARTITION BY gender ORDER BY salary DESC) AS dense_num
FROM employee_demographics DEMO
JOIN employee_salary SAL
ON DEMO.employee_id = SAL. employee_id;

















