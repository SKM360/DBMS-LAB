CREATE TABLE Bank (
    SNo INT,
    Cust_Name VARCHAR(50),
    Acc_No INT,
    Balance INT,
    Cust_Branch VARCHAR(50)
);

INSERT INTO Bank (SNo, Cust_Name, Acc_No, Balance, Cust_Branch) VALUES
(1, 'Ramesh', 12378, 100000, 'Sambalpur'),
(2, 'Sam',    12367, 152500, 'Angul'),
(3, 'Harish', 12345, 250000, 'Bhubaneswar');

SELECT * FROM Bank;

SELECT * 
FROM Bank
WHERE Balance > 150000;

SELECT * 
FROM Bank
WHERE Acc_No LIKE '%7%';

SELECT * 
FROM Bank
WHERE Balance BETWEEN 120000 AND 200000;

UPDATE Bank
SET Cust_Branch = 'Burla'
WHERE SNo = 2;
SELECT * FROM Bank;