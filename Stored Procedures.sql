#STORED PROCEDURES

CREATE PROCEDURE salary_procedure()
SELECT *
FROM employee_salary
WHERE salary >= 50000;

CALL salary_procedure();


DELIMITER $$
CREATE PROCEDURE salary_procedure4()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 10000;
END $$
DELIMITER ;

CALL salary_procedure4();


#PARAMETERS
DELIMITER $$
DROP PROCEDURE IF EXISTS salary_procedure5;
CREATE PROCEDURE salary_procedure5(ID_NO INT)
BEGIN
	SELECT salary
	FROM employee_salary
    WHERE employee_id = ID_NO;
END $$
DELIMITER ;

CALL salary_procedure5(12)


