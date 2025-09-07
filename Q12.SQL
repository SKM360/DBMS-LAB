CREATE TABLE State (
    State_id INT PRIMARY KEY,
    State_name VARCHAR(50),
    Population INT,
    Area FLOAT
);

CREATE TABLE District (
    dist_id INT PRIMARY KEY,
    dist_name VARCHAR(50),
    dof DATE,
    area FLOAT,
    State_id INT,
    FOREIGN KEY (State_id) REFERENCES State(State_id)
);

INSERT INTO State (State_id, State_name, Population, Area) VALUES
(1, 'Odisha', 41000000, 155707),
(2, 'Bihar', 99000000, 94163),
(3, 'Jharkhand', 38000000, 79714);

INSERT INTO District (dist_id, dist_name, dof, area, State_id) VALUES
(101, 'Cuttack', '1990-01-01', 3932, 1),
(102, 'Patna', '1985-06-01', 3200, 2),
(103, 'Ranchi', '2001-02-05', 5097, 3);


SELECT d.dist_name
FROM District d
JOIN State s ON d.State_id = s.State_id
WHERE s.State_name = 'Odisha';


SELECT d.dist_name
FROM District d
JOIN State s ON d.State_id = s.State_id
WHERE s.State_name = 'Bihar'
ORDER BY d.area DESC
LIMIT 1;


SELECT State_name
FROM State
ORDER BY Area DESC;

SELECT s.State_name, COUNT(d.dist_id) AS No_of_Districts
FROM State s
JOIN District d ON s.State_id = d.State_id
GROUP BY s.State_name
ORDER BY No_of_Districts DESC
LIMIT 1;

SELECT d.dist_name, s.State_name
FROM District d
JOIN State s ON d.State_id = s.State_id
WHERE d.dof > '2002-01-01';

SELECT d.dist_name
FROM District d
JOIN State s ON d.State_id = s.State_id
WHERE s.State_name = 'Odisha'
  AND d.dist_name LIKE 'S%';

SELECT dist_name, area
FROM District
ORDER BY area ASC
LIMIT 1;

