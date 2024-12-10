CREATE TABLE Students (
studentId INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Gender VARCHAR(5),
DOB DATE,
ContactNumber INT
);


DESC Students;


INSERT INTO Students VALUES
(02, 'John', 'Doe', 'MALE', '06/12/2001', 1234567890);


SELECT * FROM Students;


ALTER TABLE Students
ADD Email VARCHAR(50);


UPDATE Students
SET Email = 'abc123@gmail.com'
WHERE studentId = 01;


DELETE FROM Students
WHERE studentId = 05;


DROP TABLE Students;