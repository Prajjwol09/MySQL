SELECT * 
FROM employee_demographics;

#GROUP BY
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;


#ORDER BY
SELECT * 
FROM employee_demographics
ORDER BY age desc;


SELECT * 
FROM employee_demographics
ORDER BY 4 desc;      -- replacing the age column with the with its index(starting with 1)

