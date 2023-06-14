USE SQLBASICS;

CREATE TABLE STUDENTS( STUDENT_ID INTEGER PRIMARY KEY NOT NULL, FIRST_NAME VARCHAR(20),LAST_NAME VARCHAR(20),CLASS VARCHAR(20),AGE INTEGER);
CREATE TABLE MARKSHEET( SCORE INTEGER, YEAR INTEGER,RANKING INTEGER,CLASS VARCHAR(20),STUDENT_ID INTEGER);
SHOW TABLES;

INSERT INTO STUDENTS (STUDENT_ID, FIRST_NAME, LAST_NAME, CLASS, AGE) VALUES 
(1, 'krishna', 'gee', '10', 18),
(2, 'Stephen', 'Christ', '10', 17),
(3, 'Kailash', 'kumar', '10', 18),
(4, 'ashish', 'jain', '10', 16),
(5, 'khusbu', 'jain', '10', 17),
 (6, 'madhan', 'lal', '10', 16),
(7, 'saurab', 'kothari', '10', 15),
(8, 'vinesh', 'roy', '10', 14),
(9, 'rishika', 'r', '10', 15),
(10, 'sara', 'rayan', '10', 16),
(11, 'rosy', 'kumar', '10', 16);

SELECT * FROM STUDENTS;

INSERT INTO MARKSHEET (SCORE, YEAR, CLASS, RANKING, STUDENT_ID) 
VALUES
    (989, 2014, '10', 1, 1),
    (454, 2014, '10', 10, 2),
    (880, 2014, '10', 4, 3),
    (870, 2014, '10', 5, 4),
    (720, 2014, '10', 7, 5),
    (670, 2014, '10', 8, 6),
    (900, 2014, '10', 3, 7),
    (540, 2014, '10', 9, 8),
    (801, 2014, '10', 6, 9),
    (420, 2014, '10', 11, 10),
    (970, 2014, '10', 2, 11),
    (720, 2014, '10', 12, 12);

SELECT * FROM MARKSHEET;

SELECT STUDENT_ID, FIRST_NAME FROM STUDENTS 
WHERE AGE>=16 AND LAST_NAME = 'KUMAR'; 

SELECT * FROM MARKSHEET WHERE SCORE BETWEEN 800 AND 1000;

SELECT SCORE + 5 AS 'NEW SCORE', YEAR, CLASS, RANKING, STUDENT_ID FROM MARKSHEET;

SELECT * FROM MARKSHEET ORDER BY SCORE DESC;

SELECT * FROM STUDENTS WHERE FIRST_NAME LIKE "a%";