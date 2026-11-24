USE DA9;

SELECT*FROM EMPLOYEES;

INSERT INTO EMPLOYEES(EMPID,FIRSTNAME,DOJ,ADDRESS,DEPT)
VALUES
('EMP05','RAM','2000-12-12','PUNE','PHARMA');


Insert into employees(empid,last_name,age,doj,dept)
values
('emp06','kumar',20,'2000-11-11','it');

SET SQL_SAFE_UPDATES=0;
UPDATE EMPLOYEES SET ADDRESS='VJY' WHERE EMPID='EMP01';
SELECT*FROM EMPLOYEES;

delete from employees where empid='emp01';
truncate table employees;
















