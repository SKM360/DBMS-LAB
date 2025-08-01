CREATE TABLE student3 ( 
Name VARCHAR(20) NOT NULL, 
rollno INT PRIMARY KEY, 
address VARCHAR(20), 
dob DATE 
); 
CREATE TABLE mark3 ( 
rollno INT PRIMARY KEY, 
p1_mark numeric(3,1), 
p2_mark numeric(3,1) 
); 
INSERT INTO student3 (Name, rollno, address, dob) VALUES 
('Ajay', 1, 'Burla', '1990-03-10'), 
('Bijay', 2, 'Sambalpur', '1988-05-12'), 
('Akash', 3, 'Burla', '1989-06-13'), 
('Suresh', 4, 'Delhi', '1991-07-14'), 
('Arun', 5, 'Cuttack', '1992-08-15'), 
('Sunil', 6, 'Burla', '1987-09-16'), 
('Amit', 7, 'Bhubaneswar', '1993-10-17'), 
('Simran', 8, 'Burla', '1994-11-18'), 
('Rohit', 9, 'Rourkela', '1995-12-19'), 
('Sneha', 10, 'Burla', '1986-01-20'); 
INSERT INTO mark3 (rollno, p1_mark, p2_mark) VALUES 
(1, 9.5, 8.0), 
(2, 8.5, 9.1), 
(3, 9.0, 9.5), 
(4, 7.5, 6.5), 
(5, 8.0, 7.5), 
(6, 9.2, 8.5), 
(7, 6.5, 6.0), 
(8, 9.0, 9.95), 
(9, 7.8, 8.0), 
(10, 9.1, 9.0); 
DELETE FROM student3 
WHERE address = 'Burla'; 


UPDATE student3 
SET Name = 'jack', address = 'hostel', dob = '1989-06-13' 
WHERE rollno = 15; 

use university;

SELECT s.Name, s.dob, m.p1_mark, m.p2_mark 
FROM student3 s
JOIN mark3 m ON s.rollno = m.rollno; 

USE UNIVERSITY;

SELECT * FROM mark3 
WHERE p1_mark >= 9; 
SELECT * FROM mark3 
WHERE p1_mark = 9 AND p2_mark = 9.95; 
SELECT * FROM student3 
WHERE dob <> '1990-03-10' AND rollno <> 5; 
SELECT * FROM student3 
WHERE dob NOT BETWEEN '1980-03-10' AND '1990-03-10'; 
SELECT * FROM student3 
WHERE Name LIKE 'S%' OR Name LIKE 'A%'; 
ALTER TABLE mark3 
ADD tot_mark numeric(4,2); 
UPDATE mark3 
SET tot_mark = p1_mark + p2_mark;