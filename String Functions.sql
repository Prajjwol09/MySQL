SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;

#STRING FUNCTIONS
-- LENGTH()
SELECT LENGTH("PRAJJWOL") AS LEN;


SELECT first_name, LENGTH(first_name) AS length
FROM employee_demographics
ORDER BY first_name;

-- UPPER ADN LOWER
SELECT UPPER("prajjwol_thapa") AS CAPS;
SELECT LOWER("PRAJJWOL_THAPA") AS LOWS;


SELECT first_name, last_name, UPPER(first_name) Caps, LOWER(last_name) Lows
FROM employee_demographics;


#TRIM
SELECT TRIM("                PRAJJWOL                    ") AS Trimmed;
SELECT LTRIM("                PRAJJWOL                    ") AS Trimmed;   -- LEFT TRIM
SELECT RTRIM("                PRAJJWOL                    ") AS Trimmed;   -- RIGHT TRIM


#SUBSTRING
SELECT first_name, LEFT(first_name, 4)  LSUBSTRING,
                   RIGHT(first_name, 4) RSUBSTRING,
                   SUBSTRING(first_name, 1,4) first_four,
                   birth_date,
                   SUBSTRING(birth_date, 6,2) birth_month
FROM employee_demographics;


#REPLACE
SELECT first_name, REPLACE(first_name, 'A','C')
FROM employee_demographics;


#LOCATE
SELECT first_name, LOCATE('A',first_name)
FROM employee_demographics;


#CONCATENATE
SELECT first_name, last_name, CONCAT(first_name," ", last_name) AS FullName
FROM employee_demographics;



