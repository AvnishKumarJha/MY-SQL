CREATE DATABASE college;
USE college;
-- 1.Create table
CREATE TABLE student(
student_ID INT,
name VARCHAR(50)
);
select* from student;

-- 2.Alter/modify attributes
ALTER TABLE student
ADD branch VARCHAR(50);
select* from student;

-- 3.Delete/Drop table
CREATE TABLE teacher(
teacher_id INT,
name VARCHAR(50)
);
select* from teacher;
drop table teacher;

-- 4.Indexing a Table
CREATE INDEX indexes
ON student(student_ID,name);
INSERT INTO student values
(1,'Abhi','CSE'),
(2,'Ram','CSE'),
(3,'Shyam','CSE'),
(4,'Suresh','CSE');
select* from student;

-- 5.Creating View in table
CREATE VIEW views AS
SELECT student_ID,name,branch
FROM student
WHERE branch = 'CSE';
select* from student;