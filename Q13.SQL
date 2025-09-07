CREATE TABLE Student (
    S_name VARCHAR(50),
    Rollno INT PRIMARY KEY,
    Address VARCHAR(100),
    Dob DATE
);

CREATE TABLE Mark (
    rollno INT,
    P1_mark FLOAT,
    P2_mark FLOAT,
    FOREIGN KEY (rollno) REFERENCES Student(Rollno)
);

INSERT INTO Student (S_name, Rollno, Address, Dob) VALUES
('Sanjay', 1, 'Bhubaneswar', '1990-03-10'),
('Ajay', 2, 'Cuttack', '1985-05-15'),
('Rahul', 3, 'Balasore', '1992-07-20'),
('Sunita', 4, 'Sambalpur', '1989-09-25'),
('Alok', 5, 'Puri', '1990-03-10');

INSERT INTO Mark (rollno, P1_mark, P2_mark) VALUES
(1, 9.0, 8.5),
(2, 7.5, 6.5),
(3, 9.0, 9.9),
(4, 8.0, 7.0),
(5, 6.5, 7.5);

SELECT * 
FROM Student
WHERE Dob = '1990-03-10'
  AND Rollno <> 5;

SELECT *
FROM Student
WHERE Dob NOT BETWEEN '1980-03-10' AND '1990-03-10';

SELECT *
FROM Student
WHERE S_name LIKE 'S%' OR S_name LIKE 'a%' OR S_name LIKE 'A%';

SELECT *
FROM Mark
WHERE P1_mark = 9;

SELECT *
FROM Mark
WHERE P1_mark = 9
  AND P2_mark = 9.9;

ALTER TABLE Mark ADD COLUMN tot_mark FLOAT;

UPDATE Mark
SET tot_mark = P1_mark + P2_mark;

