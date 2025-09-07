
CREATE TABLE Student ( 
Name CHAR(15) NOT NULL, 
Rollno INT PRIMARY KEY, 
dob DATE 
); 
CREATE TABLE Mark ( 
Rollno INT PRIMARY KEY, 
S1_Mark numeric(3,2), 
S2_Mark numeric(3,2) 
); 
CREATE TABLE Studentdiv ( 
Name CHAR(15) NOT NULL, 
Rollno INT, 
Division CHAR(8) NOT NULL 
); 
ALTER TABLE Student 
ADD Stream CHAR(15); 
ALTER TABLE Mark 
ADD Totalmark numeric(5,2); 
INSERT INTO Student (Name, Rollno, dob, Stream) VALUES 
('Arjun', 101, '1990-01-15', 'Science'), 
('Karan', 102, '1988-05-20', 'Commerce'), 
('Rehan', 103, '1994-07-10', 'Arts'), 
('Meena', 104, '1991-03-25', 'Science'), 
('Nitin', 105, '1989-12-05', 'Arts'), 
('Simran', 106, '1993-06-14', 'Commerce'), 
('Rohan', 107, '1992-09-09', 'Science'), 
('Aman', 108, '1995-01-01', 'Arts'), 
('Tarun', 109, '1987-11-30', 'Commerce'), 
('Varun', 110, '1986-04-18', 'Science'); 
INSERT INTO Mark (Rollno, S1_Mark, S2_Mark, Totalmark) VALUES 
(101, 8.5, 7.5, 16.0), 
(102, 9.0, 8.5, 17.5), 
(103, 7.0, 6.5, 13.5), 
(104, 8.0, 8.0, 16.0), 
(105, 6.5, 7.0, 13.5), 
(106, 9.5, 9.0, 18.5), 
(107, 7.5, 8.0, 15.5), 
(108, 6.0, 6.5, 12.5), 
(109, 8.0, 7.5, 15.5), 
(110, 9.0, 8.0, 17.0); 
INSERT INTO Studentdiv (Name, Rollno, Division) VALUES 
('Arjun', 101, 'A'), 
('Karan', 102, 'B'), 
('Rehan', 103, 'C'), 
('Meena', 104, 'A'), 
('Nitin', 105, 'B'), 
('Simran', 106, 'C'), 
('Rohan', 107, 'A'), 
('Aman', 108, 'B'), 
('Tarun', 109, 'C'), 
('Varun', 110, 'A'); 

SELECT student.Name, student.Rollno, Stream, Division 
FROM Student 
JOIN Studentdiv  ON Student.Rollno = Studentdiv.Rollno; 


SELECT * FROM Student 
WHERE dob BETWEEN '1985-01-01' AND '1995-01-01'; 

SELECT * FROM Student 
WHERE Name LIKE '%n'; 

SELECT student.Rollno, student.Name, studentdiv.Division 
FROM Student 
JOIN Mark  ON Student.Rollno = Mark.Rollno 
JOIN Studentdiv  ON Student.Rollno = Studentdiv.Rollno 
ORDER BY Mark.Totalmark DESC; 