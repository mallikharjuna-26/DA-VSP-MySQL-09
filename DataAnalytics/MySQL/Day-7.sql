DROP DATABASE DA9;

CREATE DATABASE PFS9;

USE PFS9;

CREATE TABLE Products (
 id INT,
 name VARCHAR(100),
 price DECIMAL(10,2),
 qty INT
 );

INSERT INTO Products VALUES
 (1, 'Pen', 10.00, 100),
 (2, 'Notebook', 25.00, 50),
 (3, 'Pencil', 5.00, 200),
 (4, 'Eraser', 3.00, 300),
 (5, 'Marker', 15.00, 80),
 (6, 'Scale', 20.00, 150),
 (7, 'Sharpener', 8.00, 120),
 (8, 'Geometry Box', 120.00, 40),
 (9, 'Sketch Pen', 60.00, 75),
 (10, 'Crayons', 90.00, 55);
SELECT*FROM PRODUCTS;
SELECT NAME,PRICE,PRICE+(PRICE*0.12)AS PRICE_WITH_TAX FROM PRODUCTS;
SELECT NAME,PRICE,PRICE-5 AS DISCOUNTED_PRICE FROM PRODUCTS;

SELECT NAME,PRICE,QTY,PRICE*QTY AS INVENTORY_PRICE FROM PRODUCTS;
SET SQL_SAFE_UPDATES=0;
UPDATE PRODUCTS SET QTY=QTY+2;
SELECT*FROM PRODUCTS;


CREATE TABLE StudentScores (
 id INT,
 name VARCHAR(100),
 subject VARCHAR(50),
 marks INT
 );


INSERT INTO StudentScores VALUES
 (1, 'Alice', 'Math', 95),
 (2, 'Bob', 'Math', 76),
 (3, 'Charlie', 'Math', 59),
 (4, 'Diana', 'Math', 88),
 (5, 'Eve', 'Math', 40),
 (6, 'Frank', 'Math', 95),
 (7, 'Grace', 'Science', 67),
 (8, 'Henry', 'Science', 82),
 (9, 'Ivy', 'English', 91),
 (10, 'Jack', 'English', 55),
 (11, 'Kevin', 'Math', 73),
 (12, 'Lily', 'Science', 48),
 (13, 'Mia', 'English', 100),
 (14, 'Noah', 'Math', 64),
 (15, 'Olivia', 'Science', 79);

SELECT*FROM STUDENTSCORES;

SELECT*FROM STUDENTSCORES WHERE MARKS>80;

-- Q2. Display students who scored 60 or more.
SELECT*FROM STUDENTSCORES WHERE MARKS >=60;
-- Q3. Display students who scored less than 50.
SELECT*FROM STUDENTSCORES WHERE MARKS <50;
 
 
 UPDATE STUDENTSCORES SET MARKS=MARKS+10 WHERE MARKS<50;
 
 