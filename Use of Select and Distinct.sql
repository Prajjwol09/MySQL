SELECT * 
FROM  parks_and_recreation.employee_demographics;



SELECT first_name,
last_name, 
birth_date,
age,
(age + 10)*10        #PEMDAS (Parenthesis, Exponentiation, Multiplication, Division, Addition, Subtraction)
FROM  parks_and_recreation.employee_demographics;

#Use of Distinct 
SELECT DISTINCT gender
FROM  parks_and_recreation.employee_demographics;