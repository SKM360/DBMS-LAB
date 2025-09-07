CREATE TABLE EMPLOYEE ( 
empid INT PRIMARY KEY, 
empname VARCHAR(50), 
job VARCHAR(30), 
dept_name VARCHAR(50), 
salary DECIMAL(10, 2) 
); 

INSERT INTO EMPLOYEE (empid, empname, job, dept_name, salary) VALUES 
(1, 'Ajay Meher', 'Software Engineer', 'IT', 75000.00), 
(2, 'Bijay Sahu', 'Data Scientist', 'Data Science', 80000.00), 
(3, 'Akash Das', 'System Analyst', 'IT', 70000.00), 
(4, 'Jyoti huq', 'HR Manager', 'HR', 60000.00), 
(5, 'Sk Naik', 'Project Manager', 'IT', 95000.00), 
(6, 'Girish Bidyasagar', 'Database Administrator', 'IT', 85000.00), 
(7, 'Chandrakant Juadi', 'Data Analyst', 'Data Science', 72000.00), 
(8, 'manas swain', 'Software Engineer', 'IT', 75000.00); 

ALTER TABLE EMPLOYEE 
ADD address VARCHAR(100); 

UPDATE EMPLOYEE 
SET address = 'IIT Delhi'; 

SELECT empname FROM EMPLOYEE 
ORDER BY empname ASC; 

SELECT SUM(salary) AS salary FROM EMPLOYEE; 