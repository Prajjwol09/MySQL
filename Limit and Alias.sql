SELECT * 
FROM employee_demographics;

#LIMIT 
SELECT * 
FROM employee_demographics
LIMIT 3;                  -- gives the first three rows of the table


SELECT * 
FROM employee_demographics
ORDER BY age desc
LIMIT 2, 1;                -- gives the row which is after the second row.


#ALIASING
SELECT gender, AVG(age) AS A       -- HERE A IS AN ALIAS FOR AVG(AGE) 
FROM employee_demographics
GROUP BY gender
HAVING A > 35;


SELECT gender, AVG(age)  A       
FROM employee_demographics
GROUP BY gender
HAVING A > 35;
