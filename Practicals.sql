
SELECT ("Removing Garbage VALUES");
DROP DATABASE STUD;

SELECT("Creating a Database");
CREATE DATABASE STUD;
USE STUD;

SELECT("Creating a Table");
CREATE TABLE STUD
(
student_id INTEGER NOT NULL UNIQUE PRIMARY KEY,
class INTEGER NOT NULL,
section VARCHAR(100) NOT NULL,
gender CHAR NOT NULL,
name VARCHAR(100) NOT NULL,
dob DATE NOT NULL,
marks FLOAT(2) NOT NULL
)
;

SELECT("Inserting Values into the Table");
INSERT INTO STUD
VALUES
(1, 11, "A", "M", "Alpha Williams", "2006-10-10", 99),
(2, 11, "A", "F", "Beta Peterson", "2008-2-12", 100),
(3, 10, "B", "M", "Gamma Peterson", "2008-12-3", 87),
(4, 10, "A", "F", "Delta Anderson", "2008-04-02", 49.1),
(5, 10, "A", "F", "Epsilon Hooke", "2008-06-07", 78),
(6, 11, "B", "M", "Zeta Morgan", "2007-05-13", 67),
(7, 11, "B", "M", "Eta Ellison", "2007-09-05", 100),
(8, 11, "B", "F", "Theta Thomson", "2007-8-5",88),
(9, 11, "A", "F", "Iota English", "2007-07-14", 54),
(10, 11, "A", "M", "Kappa Kingston", "2007-10-16", 37);

SELECT("Dsiplaying entire conent of the table");
SELECT * FROM STUD;

SELECT("Displaying R.No. i.e., student_id, name and marks of all those students who are scoring more than 50 marks");
SELECT student_id, name, marks
FROM STUD
WHERE marks>50;

SELECT("Displaying R.No. i.e., student_id name and dob of those students who are born between '2007-01-01' and '2007-12-31'");
SELECT student_id, name, dob
FROM STUD
WHERE dob>"2007-1-1" AND dob<"2007-12-31";