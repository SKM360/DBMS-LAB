CREATE TABLE STUDENT2 ( 
roll_no VARCHAR(10) PRIMARY KEY, 
name VARCHAR(50) NOT NULL, 
course VARCHAR(10) 
); 

INSERT INTO STUDENT2 (roll_no, name, course) VALUES 
('MSC-01', 'Ajay Meher', 'MSC'), 
('MSC-02', 'Bijay Sahu', 'MSC'), 
('MSC-03', 'Akash Das', 'MSC'), 
('MSC-04', 'Jyoti Beheyra', 'MSC'), 
('BSC-01', 'Sk Naik', 'BSC'), 
('BSC-02', 'Girish Bidyasagar', 'BSC'), 
('BSC-03', 'Chandrakant Juadi', 'BSC'), 
('BSC-04', 'Ramesh Kumar', 'BSC'); 

ALTER TABLE STUDENT2 
ADD address VARCHAR(100); 

SELECT * FROM STUDENT2; 

DELETE FROM STUDENT2 
WHERE roll_no IN ('MSC-02', 'BSC-04');