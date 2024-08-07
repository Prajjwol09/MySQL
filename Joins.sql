SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;

#JOINS
#INNER JOIN          -- returns the data of the common row
SELECT 
* FROM employee_demographics emp_d
INNER JOIN employee_salary emp_s
ON emp_d.employee_id = emp_s.employee_id;


#OUTER JOIN
#LEFT JOIN      -- returns all the row of the left table and only the common row from the right table
SELECT * 
FROM employee_demographics demo 
LEFT JOIN employee_salary sal
ON demo.employee_id = sal.employee_id;


#RIGHT JOIN      -- returns all the row of the RIGHT table and only the common row from the LEFT table
SELECT * 
FROM employee_demographics demo 
RIGHT JOIN employee_salary sal
ON demo.employee_id = sal.employee_id;


#SELF JOIN
SELECT sal1.employee_id AS emp_santa,
sal1.first_name AS first_name_santa,
sal1.last_name AS last_name_santa,
sal2.employee_id AS empid,
sal2.first_name AS firstname,
sal2.last_name AS lastname
FROM employee_salary sal1
JOIN employee_salary sal2
ON sal1.employee_id +1 = sal2.employee_id;


#Joining multiple tables
SELECT *
FROM employee_demographics DEMO
INNER JOIN employee_salary SAL
ON DEMO.employee_id = SAL.employee_id
INNER JOIN parks_departments PARK 
ON SAL.dept_id = PARK.department_id;