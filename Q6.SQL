CREATE TABLE employee (
    EMPLOYEE_ID INT(10),
    EMPLOYEE_NAME VARCHAR(50),
    DEPT_NAME VARCHAR(50),
    SALARY INT
);
use skmdb;

INSERT INTO employee (EMPLOYEE_ID, EMPLOYEE_NAME, DEPT_NAME, SALARY) VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'Finance', 65000),
(3, 'Charlie', 'IT', 70000),
(4, 'David', 'IT', 60000),
(5, 'Eve', 'Marketing', 55000),
(6, 'Frank', 'Finance', 80000),
(7, 'Grace', 'HR', 62000),
(8, 'Heidi', 'IT', 75000),
(9, 'Ivan', 'Marketing', 48000),
(10, 'Jack', 'Finance', 67000);


SELECT * FROM employee;


ALTER TABLE employee
ADD Date_of_Joining DATE;


ALTER TABLE employee
DROP COLUMN employee_address;

ALTER TABLE employee
RENAME COLUMN EMPLOYEE_ID TO JOB_ID;


SELECT DEPT_NAME
FROM (
    SELECT DEPT_NAME, AVG(SALARY) AS avg_sal
    FROM employee
    GROUP BY DEPT_NAME
) AS dept_avg
ORDER BY avg_sal DESC
LIMIT 1;

DELIMITER $$

CREATE TRIGGER set_joining_date
BEFORE INSERT ON employee
FOR EACH ROW
BEGIN
    IF NEW.Date_of_Joining IS NULL THEN
        SET NEW.Date_of_Joining = CURDATE();
    END IF;
END$$

DELIMITER ;

delete from employee where employee_id=11;


SELECT 
    EMPLOYEE_NAME,
    DEPT_NAME,
    SALARY,
    RANK() OVER (PARTITION BY DEPT_NAME ORDER BY SALARY DESC) AS rank_in_dept
FROM employee;


SELECT * FROM employee
WHERE EMPLOYEE_NAME LIKE 'A%r';

SELECT DEPT_NAME, SUM(SALARY) AS total_salary
FROM employee
GROUP BY DEPT_NAME;