create table employee(
 EMPLOYEE_ID INT,
 EMPLOYEE_NAME VARCHAR (50), 
 DEPT_NAME VARCHAR(50),
 SALARY INT);
 
 
INSERT INTO EMPLOYEE (employee_id, employee_name,  dept_name, salary) VALUES 
(1, 'Ajay Meher',  'IT', 75000), 
(2, 'Bijay Sahu', 'Data Science', 80000), 
(3, 'Akash Das', 'IT', 70000), 
(4, 'Jyoti huq',  'HR', 60000), 
(5, 'Sk Naik', 'IT', 95000), 
(6, 'Girish Bidyasagar', 'IT', 85000), 
(7, 'Chandrakant Juadi',  'Data Science', 72000), 
(8, 'manas swain',  'IT', 75000), 
(9, 'nurul swain',  'IT', 85000),
(10, 'chandan swain',  'IT', 95000); 

alter table employee add date_of_joining date;
 
 
 
 
 
select * from employee;

ALTER TABLE employee DROP COLUMN employee_address;


alter table employee rename column employee_id to job_id;

SELECT * FROM employee
WHERE Date_of_Joining > '2022-01-01' AND SALARY > 60000;

SELECT DEPT_NAME, AVG(SALARY) AS average_salary
FROM employee
GROUP BY DEPT_NAME;





create table department(dept_name varchar(50) primary key,location varchar(50));


ALTER TABLE employee
ADD CONSTRAINT fk_dept
FOREIGN KEY (DEPT_NAME) REFERENCES department(DEPT_NAME);

SELECT DISTINCT DEPT_NAME FROM employee;

INSERT INTO department (DEPT_NAME, LOCATION) VALUES

('IT', 'Bangalore'),
('Data science', 'hyderabad'),
('HR', 'Delhi');

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



