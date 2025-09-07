CREATE TABLE Book (
    SNo INT,
    Book_Name VARCHAR(50),
    Author VARCHAR(50),
    Price INT,
    Publisher VARCHAR(50)
);

INSERT INTO Book (SNo, Book_Name, Author, Price, Publisher) VALUES
(1, 'DBMS', 'Seema Kedhar', 250, 'Charulatha'),
(2, 'TOC', 'John Martin', 400, 'Tata MC Graw Hill'),
(3, 'C', 'E.Balagurusamy', 300, 'Technical');

COMMIT;

SAVEPOINT B;

-- Insert extra rows
INSERT INTO Book (SNo, Book_Name, Author, Price, Publisher)
VALUES (4, 'Java', 'James Gosling', 500, 'Pearson'),
       (5, 'Python', 'Guido van Rossum', 450, 'O’Reilly');

-- Now rollback to savepoint B
ROLLBACK TO B;



UPDATE Book
SET Price = Price + (Price * 0.15)
WHERE Book_Name = 'DBMS';
SELECT * FROM Book;
