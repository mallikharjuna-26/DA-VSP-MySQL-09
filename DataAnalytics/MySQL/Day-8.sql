CREATE DATABASE DA9;
USE DA9;

CREATE TABLE Employees (
   id INT,
   name VARCHAR(100),
   department VARCHAR(100),
   salary INT,
   isactive BOOLEAN
);
Insert Into employees values
(1, 'Rahul Sharma', 'IT', 50000, TRUE),
(2, 'Priya Reddy', 'HR', 30000, TRUE),
(3, 'Amit Kumar', 'Finance', 45000, FALSE),
(4, 'Sneha Patel', 'IT', 35000, TRUE),
(5, 'Vikram Singh', 'Finance', 28000, TRUE),
(6, 'Anjali Mehta', 'HR', 32000, FALSE),
(7, 'Kiran Rao', 'IT', 60000, TRUE),
(8, 'Pooja Verma', 'Marketing', 27000, TRUE);
select*from employees;

SELECT*FROM EMPLOYEES WHERE DEPARTMENT='IT' AND SALARY>40000;
SELECT*FROM EMPLOYEES WHERE DEPARTMENT='HR' OR SALARY<35000;
SELECT*FROM EMPLOYEES WHERE DEPARTMENT!='HR';
SELECT*FROM EMPLOYEES WHERE NOT DEPARTMENT='HR';

SET SQL_SAFE_UPDATES=0;
UPDATE EMPLOYEES SET SALARY=SALARY+2000 WHERE DEPARTMENT='IT' AND SALARY<60000 AND ISACTIVE=TRUE;
UPDATE EMPLOYEES SET SALARY=SALARY-(SALARY*0.10)WHERE DEPARTMENT='FINANCE' OR ISACTIVE=FALSE;
UPDATE EMPLOYEES SET ISACTIVE=FALSE WHERE NOT DEPARTMENT='IT';

CREATE TABLE Projects (
 id INT,
 name VARCHAR(100),
 assignedto VARCHAR(100),
 start DATE,
 end DATE
 );

INSERT INTO Projects VALUES
 (1, 'Website Revamp', 'Alice', '2024-01-15', '2024-03-01'),
 (2, 'Mobile App', 'Bob', '2024-02-01', NULL),
 (3, 'Data Migration', NULL, NULL, NULL),
 (4, 'SEO Optimization', 'Eve', '2024-03-10', '2024-04-20'),
 (5, 'Cloud Migration', NULL, '2024-03-15', NULL),
 (6, 'ERP Development', 'John', '2024-04-01', NULL),
 (7, 'CRM Upgrade', NULL, NULL, NULL),
 (8, 'Inventory System', 'David', '2024-05-10', '2024-06-25'),
 (9, 'Online Portal', 'Sophia', '2024-06-15', NULL),
 (10, 'Security Audit', NULL, '2024-07-01', NULL),
 (11, 'AI Chatbot', 'James', NULL, NULL),
 (12, 'Payroll System', 'Emma', '2024-08-01', '2024-09-10'),
 (13, 'Hospital Management', NULL, NULL, NULL),
 (14, 'Student Portal', 'Michael', '2024-09-05', NULL),
 (15, 'Banking Application', NULL, '2024-10-01', NULL);

select*from projects;

SELECT*FROM PROJECTS WHERE ASSIGNEDTO IS NULL;

CREATE TABLE Orders (
 id INT,
 customer_name VARCHAR(100),
 order_date DATE,
 total_amount DECIMAL(10,2)
 );

INSERT INTO Orders VALUES
 (1, 'Alice', '2024-03-01', 1500.00),
 (2, 'Bob', '2024-03-05', 450.00),
 (3, 'Charlie', '2024-03-10', 2500.00),
 (4, 'Diana', '2024-03-15', 800.00),
 (5, 'Eve', '2024-03-20', 1200.00),
 (6, 'Frank', '2024-03-25', 3000.00),
 (7, 'Grace', '2024-04-02', 1800.00),
 (8, 'Henry', '2024-04-08', 950.00),
 (9, 'Ivy', '2024-04-12', 2750.00),
 (10, 'Jack', '2024-04-18', 650.00),
 (11, 'Kevin', '2024-04-22', 4200.00),
 (12, 'Lily', '2024-05-01', 1350.00),
 (13, 'Michael', '2024-05-08', 5000.00),
 (14, 'Nancy', '2024-05-15', 2250.00),
 (15, 'Oliver', '2024-05-25', 900.00);

SELECT*FROM ORDERS;

SELECT*FROM ORDERS WHERE ORDER_DATE  BETWEEN '2024-03-03' AND '2024-03-10';


CREATE TABLE Emp (
 id INT,
 name VARCHAR(100),
 dept VARCHAR(20),
 salary INT
 );


INSERT INTO Emp VALUES
 (1, 'Rahul', 'IT', 50000),
 (2, 'Ramesh', 'HR', 35000),
 (3, 'Karan', 'Finance', 45000),
 (4, 'Mahesh', 'Marketing', 40000),
 (5, 'Suresh', 'IT', 55000),
 (6, 'Arjun', 'Sales', 38000),
 (7, 'Manish', 'Admin', 42000),
 (8, 'Ganesh', 'Finance', 47000),
 (9, 'Naresh', 'HR', 39000),
 (10, 'Rohan', 'IT', 52000),
 (11, 'Mohan', 'Sales', 41000),
 (12, 'Kishan', 'Marketing', 43000),
 (13, 'Dinesh', 'Admin', 46000),
 (14, 'Rajesh', 'Finance', 51000),
 (15, 'Kiran', 'IT', 48000);

select*from emp;

select*from emp where dept IN('IT','FINANCE');




