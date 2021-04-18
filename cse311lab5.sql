Activity1 

SELECT Last_Name,Hire_Date FROM emps WHERE emps.Department_Id = (SELECT emps.Department_Id FROM emps WHERE emps.Last_Name ="Zlotkey") AND emps.Last_Name != "Zlotkey"

Activity2 
SELECT Employee_Id,Last_Name FROM `emps` WHERE salary > (SELECT AVG(salary) FROM emps)

Activity3

SELECT emps.Last_Name, emps.Salary
FROM emps
WHERE emps.Manager_id = (SELECT emps.Employee_Id FROM emps WHERE emps.Last_Name = "King");

Activity 4
SELECT Employee_Id,Last_Name,Salary FROM `emps` WHERE salary > (SELECT AVG(salary) FROM emps) AND Last_Name LIKE "%u%";

Activity 5 
CREATE TABLE empnew ( id INT(4) NOT NULL PRIMARY KEY, fname VARCHAR(20), lname VARCHAR(20) )
INSERT INTO empnew (id, fname, lname)
VALUES 
(601, "Parinda", "Rahman"),
(602, "Emon", "Sarker"),
(603, "Tahrima", "Ihsan");
INSERT INTO empnew(id, fname, lname) SELECT Employee_Id, First_Name, Last_Name FROM emps

Activity 6 
CREATE TABLE EMP(ID Int(7), First_Name Varchar(25), Last_Name Varchar(25), Dept_ID Int(7))
a)ALTER TABLE emp MODIFY Last_Name Varchar(30)
b)CREATE TABLE employees2(ID int(6), First_Name Varchar(20), Last_Name Varchar(25), Salary DECIMAL(8,2), DEPT_ID int(4))
c)DROP TABLE emp
d)RENAME TABLE employees2 TO EMP
e)ALTER TABLE emp DROP COLUMN First_Name