#WHERE CLAUSE

SELECT * 
FROM employee_salary 
WHERE salary > 50000;


SELECT * 
FROM employee_salary 
WHERE last_name = "wyatt";


SELECT * 
FROM employee_demographics
WHERE gender = "Null";


SELECT * 
FROM employee_demographics
WHERE birth_date > "1980-01-05";


#LOGICAL OPERATORS
SELECT *                  
FROM employee_demographics
WHERE birth_date > "1980-01-05"
AND age >= 35;                      -- USE OF AND OPERATOR


SELECT *            
FROM employee_salary
WHERE salary > 55000
OR dept_id > 3;           -- USE OF OR OPERATOR


SELECT *                
FROM employee_demographics
WHERE  NOT gender = "Male";         -- USE OF NOT OPERATOR


SELECT *                
FROM employee_demographics
WHERE (employee_id = 10 AND age = 34) OR age > 45;         -- ISOLATED CONDITIONAL STATEMENT


#LIKE STATEMENT( % and _ )
SELECT *                
FROM employee_demographics
WHERE first_name LIKE "a%";     -- gives the output whose name starts with letter A  


SELECT *                
FROM employee_demographics
WHERE first_name LIKE "__n";    -- gives the output whose firstname exactly has 3 letters and ends with letter N
