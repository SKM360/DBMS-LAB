CREATE TABLE employee1 (
    Emp_name VARCHAR(100),
    Emp_salary INT
);
  
INSERT INTO employee1 (Emp_name, Emp_salary)
VALUES
('AJAY', 45000),
('BIJAY', 52000),
('SANJAY', 39000),
('RAHUL', 48000),
('RASH', 60000);


SELECT SUM(Emp_salary) AS Total_Salary
FROM employee1;

SELECT AVG(Emp_salary) AS Average_Salary
FROM employee1;

SELECT MAX(Emp_salary) AS Max_Salary
FROM employee1;


SELECT MIN(Emp_salary) AS Min_Salary
FROM employee1;