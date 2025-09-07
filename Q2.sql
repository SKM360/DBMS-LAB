CREATE TABLE MEMBER (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(50),
    address VARCHAR(50),
    city VARCHAR(50),
    pin VARCHAR(10),
    mobile_no VARCHAR(15),
    email_addr VARCHAR(50)
);


DELETE FROM MEMBER WHERE member_id > 0;


INSERT INTO MEMBER VALUES
(1, 'Virat Kohli', 'king street', 'Delhi', '110001', '9876543210', 'virat@cric.in'),
(2, 'Rohit Sharma', 'Run St', 'Mumbai', '400001', '8249436821', 'rohit@cric.in'),
(3, 'MS Dhoni', 'Captain Rd', 'Ranchi', '834001', '9812345678', 'dhoni@cric.in'),
(4, 'Sachin Tendulkar', 'Blaster Rd', 'Mumbai', '400002', '9898765432', 'sachin@cric.in'),
(5, 'KL Rahul', 'Park Ave', 'Bangalore', '560001', '9876549876', 'rahul@cric.in'),
(6, 'Jasprit Bumrah', 'Pace Ln', 'Ahmedabad', '380001', '9801234567', 'bumrah@cric.in'),
(7, 'Ravindra Jadeja', 'AllRnd Ln', 'Rajkot', '360001', '9823123456', 'jadeja@cric.in'),
(8, 'Shubman Gill', 'Star Rd', 'Chandigarh', '160001', '9811223344', 'gill@cric.in');

SELECT member_id, mobile_no FROM MEMBER;

SELECT member_id FROM MEMBER WHERE city = 'Delhi';

ALTER TABLE MEMBER ADD age INT;


UPDATE MEMBER SET age = 35 WHERE member_id = 1;
UPDATE MEMBER SET age = 37 WHERE member_id = 2;
UPDATE MEMBER SET age = 42 WHERE member_id = 3;
UPDATE MEMBER SET age = 65 WHERE member_id = 4;
UPDATE MEMBER SET age = 32 WHERE member_id = 5;
UPDATE MEMBER SET age = 31 WHERE member_id = 6;
UPDATE MEMBER SET age = 35 WHERE member_id = 7;
UPDATE MEMBER SET age = 25 WHERE member_id = 8;


SELECT member_name, email_addr FROM MEMBER WHERE age > 60;
