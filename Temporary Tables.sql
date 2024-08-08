SELECT * 
FROM employee_demographics;

SELECT * 
FROM employee_salary;


#TEMPORARY TABLES
CREATE TEMPORARY TABLE temp_table
(
first_name varchar(20),
last_name varchar(20),
fav_hobby varchar(20)
);

INSERT INTO temp_table
VALUES
('Prajjwol', 'Thapa', 'Playing Cricket'),
('Niraj', 'Kafle', 'Playing Football');

SELECT * 
FROM temp_table;


CREATE TEMPORARY TABLE temp_salary_table
SELECT * 
FROM employee_salary
WHERE salary >= 50000;

SELECT * 
FROM temp_salary_table;
