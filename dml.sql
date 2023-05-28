ALTER TABLE student
ADD ADDRESS VARCHAR2(30);

DESCRIBE student;

ALTER TABLE student
MODIFY ADDRESS VARCHAR2(50);

DESCRIBE student;

ALTER TABLE student 
RENAME COLUMN ADDRESS to PERMANENT_ADDRESS;

DESCRIBE student;

ALTER TABLE student
DROP COLUMN PERMANENT_ADDRESS;

DESCRIBE student;




INSERT INTO course VALUES
('Database',100,90,'09-JAN-2022','08-APR-2022') ;

INSERT INTO course VALUES
('Periferal',101,60,'20-JAN-2022','21-MAR-2022') ;

INSERT INTO course VALUES
('Web Devolopment',102,90,'09-FEB-2022','09-MAY-2022') ;

INSERT INTO course VALUES
('Software Engneering',103,90,'28-MAR-2022','26-JUN-2022') ;

INSERT INTO course VALUES
('Data Communication',104,120,'01-APR-2022','30-JUN-2022') ;

INSERT INTO course VALUES
('Android devolopment',105,60,'01-APR-2022','30-MAY-2022') ;

INSERT INTO course VALUES
('C++ programming',106,30,'01-APR-2022','30-APR-2022') ;








INSERT INTO student VALUES
(001,'miazanur','asif','Male','www.mizanurasif@gmail.com',01618070639,100);
INSERT INTO student VALUES
(002,'fahim','khan','Male','www.fahimkhan@gmail.com',01618070482,104);
INSERT INTO student VALUES
(003,'alif','hasan','Male','www.alifhasan@gmail.com',01914807693,101);
INSERT INTO student VALUES
(004,'tamim','iqbak','Male','www.tamimiqbalf@gmail.com',01618017852,102);
INSERT INTO student VALUES
(005,'jeba','tahsin','Female','www.jebatahsin@gmail.com',01618070895,103);
INSERT INTO student VALUES
(006,'mahjabin','oishi','Female','www.mahjabinoishi@gmail.com',01618087123,104);
INSERT INTO student VALUES
(007,'ashik','billah','Male','www.ashikbillah@gmail.com',01418133639,100);
INSERT INTO student VALUES
(008,'rafat','tahsin','Male','www.refattahsin@gmail.com',0161869639,101);
INSERT INTO student VALUES
(009,'naim','hasan','Male','www.namimhasan@gmail.com',01318077586,102);
INSERT INTO student VALUES
(010,'fahim','ahmad','Male','www.fahimahmad@gmail.com',01618075896,103);
INSERT INTO student VALUES
(011,'ridita','ridita','Female','www.ridita@gmail.com',01618078549,104);
INSERT INTO student VALUES
(012,'minhazur','rahman','Male','www.minhazurrahamn@gmail.com',01918086539,101);
INSERT INTO student VALUES
(013,'alamgir','kabir','Male','www.alamgirkabir@gmail.com',01618074856,102);
INSERT INTO student VALUES
(014,'parvin','akter','Female','www.parvinakter@gmail.com',01517896639,103);
INSERT INTO student VALUES
(015,'hasan','fahim','Male','www.hasanfahim@gmail.com',01618077864,104);
INSERT INTO student VALUES
(016,'kheya','haque','Female','www.kheyahaque@gmail.com',01611256639,100);
INSERT INTO student VALUES
(017,'labib','khan','Male','www.labibkhan@gmail.com',01618078659,100);
INSERT INTO student VALUES
(018,'labiba','mahjabin','Female','www.labiba@gmail.com',01583070639,101);
INSERT INTO student VALUES
(019,'shoriful','islam','Male','www.shorifulislam@gmail.com',01618075342,102);
INSERT INTO student VALUES
(020,'karib','islam','Male','www.karibislam@gmail.com',01785670639,103);


INSERT INTO student VALUES
(021,'lamia','islam','Female','www.lamiaislam@gmail.com',01618075862,105);
INSERT INTO student VALUES
(022,'sadman','sakib','Male','www.sadmansakin@gmail.com',0177870639,105);








INSERT INTO teacher VALUES
(001,'masum','mesba','Male','www.masummesba@gmail.com',01618025699,100);
INSERT INTO teacher VALUES
(002,'nazia','jahan','Female','www.naziajahan@gmail.com',01618089756,100);
INSERT INTO teacher VALUES
(003,'Jakaria','Rabbi','Male','www.jakariarabbi@gmail.com',01618078965,103);
INSERT INTO teacher VALUES
(004,'Salim','Mollah','Male','www.salimmollah@gmail.com',01618078965,103);
INSERT INTO teacher VALUES
(005,'Motaleb','Manik','Male','www.motalebmanik@gmail.com',01618077899,101);
INSERT INTO teacher VALUES
(006,'pottoy','saha','Male','www.pottoysaha@gmail.com',01618045321,102);
INSERT INTO teacher VALUES
(007,'Sunanda',' Das','Male','www.sunandadas@gmail.com',01618159639,102);
INSERT INTO teacher VALUES
(008,'Insanur','Shuvo','Male','www.insanurshuvo@gmail.com',01616325939,101);
INSERT INTO teacher VALUES
(009,'faisal','khan','Male','www.fasalkhan@gmail.com',01618077854,104);
INSERT INTO teacher VALUES
(010,'arif', 'hasan','Male','www.arifhasan@gmail.com',01618096321,104);

INSERT INTO teacher VALUES
(011,'hossin','fattah','Male','www.hossinfattah@gmail.com',01618077852,106);
INSERT INTO teacher VALUES
(012,'abdul', 'aziz','Male','www.arifhasan@gmail.com',01618096321,106);







INSERT INTO lecture VALUES
(001,'10-JAN-2022','30 MIN','1pm','1.30pm',001,001,100);
INSERT INTO lecture VALUES
(001,'10-JAN-2022','30 MIN','1pm','1.30pm',007,001,100);
INSERT INTO lecture VALUES
(001,'10-JAN-2022','30 MIN','1pm','1.30pm',016,001,100);
INSERT INTO lecture VALUES
(001,'10-JAN-2022','30 MIN','1pm','1.30pm',017,001,100);


INSERT INTO lecture VALUES
(002,'01-APR-2022','90 MIN','2pm','3.30pm',002,009,104);
INSERT INTO lecture VALUES
(002,'01-APR-2022','90 MIN','2pm','3.30pm',006,009,104);
INSERT INTO lecture VALUES
(002,'01-APR-2022','90 MIN','2pm','3.30pm',011,009,104);
INSERT INTO lecture VALUES
(002,'01-APR-2022','90 MIN','2pm','3.30pm',015,009,104);


INSERT INTO lecture VALUES
(003,'21-JAN-2022','90 MIN','3pm','4.30pm',003,005,101);
INSERT INTO lecture VALUES
(003,'21-JAN-2022','90 MIN','3pm','4.30pm',008,005,101);
INSERT INTO lecture VALUES
(003,'21-JAN-2022','90 MIN','3pm','4.30pm',012,005,101);
INSERT INTO lecture VALUES
(003,'21-JAN-2022','90 MIN','3pm','4.30pm',018,005,101);

INSERT INTO lecture VALUES
(004,'10-APR-2022','90 MIN','11am','12.30pm',005,003,103);
INSERT INTO lecture VALUES
(004,'10-APR-2022','90 MIN','11am','12.30pm',010,003,103);
INSERT INTO lecture VALUES
(004,'10-APR-2022','90 MIN','11am','12.30pm',014,003,103);
INSERT INTO lecture VALUES
(004,'10-APR-2022','90 MIN','11am','12.30pm',020,003,103);

INSERT INTO lecture VALUES
(005,'10-FEB-2022','90 MIN','10am','11.30pm',004,006,102);
INSERT INTO lecture VALUES
(005,'10-FEB-2022','90 MIN','10am','11.30pm',009,006,102);
INSERT INTO lecture VALUES
(005,'10-FEB-2022','90 MIN','10am','11.30pm',013,006,102);
INSERT INTO lecture VALUES
(005,'10-FEB-2022','90 MIN','10am','11.30pm',019,006,102);


INSERT INTO lecture VALUES
(006,'7-APR-2022','30 MIN','1pm','1.30pm',001,002,100);
INSERT INTO lecture VALUES
(006,'7-APR-2022','30 MIN','1pm','1.30pm',007,002,100);
INSERT INTO lecture VALUES
(006,'7-APR-2022','30 MIN','1pm','1.30pm',016,002,100);
INSERT INTO lecture VALUES
(006,'7-APR-2022','30 MIN','1pm','1.30pm',017,002,100);


INSERT INTO lecture VALUES
(007,'15-MAY-2022','60 MIN','2pm','3pm',002,010,104);
INSERT INTO lecture VALUES
(007,'15-MAY-2022','60 MIN','2pm','3pm',006,010,104);
INSERT INTO lecture VALUES
(007,'15-MAY-2022','60 MIN','2pm','3pm',011,010,104);
INSERT INTO lecture VALUES
(007,'15-MAY-2022','60 MIN','2pm','3pm',015,010,104);


INSERT INTO lecture VALUES
(008,'20-MAR-2022','90 MIN','3pm','4.30pm',003,008,101);
INSERT INTO lecture VALUES
(008,'20-MAR-2022','90 MIN','3pm','4.30pm',008,008,101);
INSERT INTO lecture VALUES
(008,'20-MAR-2022','90 MIN','3pm','4.30pm',012,008,101);
INSERT INTO lecture VALUES
(008,'20-MAR-2022','90 MIN','3pm','4.30pm',018,008,101);

INSERT INTO lecture VALUES
(009,'20-JUN-2022','90 MIN','3pm','4.30pm',005,004,103);
INSERT INTO lecture VALUES
(009,'20-JUN-2022','90 MIN','3pm','4.30pm',010,004,103);
INSERT INTO lecture VALUES
(009,'20-JUN-2022','90 MIN','3pm','4.30pm',014,004,103);
INSERT INTO lecture VALUES
(009,'20-JUN-2022','90 MIN','3pm','4.30pm',020,004,103);

INSERT INTO lecture VALUES
(010,'21-FEB-2022','90 MIN','1pm','2.30pm',004,007,102);
INSERT INTO lecture VALUES
(010,'21-FEB-2022','90 MIN','1pm','2.30pm',009,007,102);
INSERT INTO lecture VALUES
(010,'21-FEB-2022','90 MIN','1pm','2.30pm',013,007,102);
INSERT INTO lecture VALUES
(010,'21-FEB-2022','90 MIN','1pm','2.30pm',019,007,102);


INSERT INTO results VALUES 
(001,100,'pass',85);
INSERT INTO results VALUES 
(002,104,'fail',35);
INSERT INTO results VALUES 
(003,101,'pass',75);
INSERT INTO results VALUES 
(004,102,'pass',90);
INSERT INTO results VALUES 
(005,103,'fail',30);
INSERT INTO results VALUES 
(006,104,'pass',78);
INSERT INTO results VALUES 
(007,100,'pass',75);
INSERT INTO results VALUES 
(008,101,'fail',28);
INSERT INTO results VALUES 
(009,102,'pass',75);
INSERT INTO results VALUES 
(010,103,'pass',85);
INSERT INTO results VALUES 
(011,104,'fail',05);
INSERT INTO results VALUES 
(012,101,'pass',80);
INSERT INTO results VALUES 
(013,102,'pass',95);
INSERT INTO results VALUES 
(014,103,'pass',62);
INSERT INTO results VALUES 
(015,104,'pass',69);
INSERT INTO results VALUES 
(016,100,'pass',25);
INSERT INTO results VALUES 
(017,100,'pass',80);
INSERT INTO results VALUES 
(018,101,'pass',85);
INSERT INTO results VALUES 
(019,102,'fail',10);
INSERT INTO results VALUES 
(020,103,'pass',100);




SELECT * FROM course;
SELECT * FROM student;
SELECT * FROM teacher;
SELECT * FROM lecture;
SELECT * FROM results;





SELECT COURSE_ID , COURSE_NAME
FROM course;


SELECT STUDENT_ID,FNAME,LNAME
FROM student
WHERE COURSE_ID=100;


SELECT DISTINCT (MARK)
FROM results;

SELECT (MARK/10) AS MARK_DIVIDED_BY_5
FROM results
where COURSE_ID=101;

SELECT STUDENT_ID,MARK
FROM results
WHERE MARK>=80;

SELECT TEACHER_ID,FNAME,LNAME
FROM teacher
WHERE COURSE_ID=101 OR COURSE_ID=102;

SELECT STUDENT_ID,MARK
FROM results
where MARK>= 60 AND MARK<=80 ;

SELECT STUDENT_ID,MARK
FROM results
where MARK BETWEEN 60 AND 80;

SELECT STUDENT_ID,MARK
FROM results
where MARK NOT BETWEEN 60 AND 80;

SELECT STUDENT_ID, COURSE_ID 
FROM results
WHERE MARK  IN (80, 90);

SELECT STUDENT_ID, COURSE_ID 
FROM results
WHERE MARK NOT  IN (80, 90);

SELECT STUDENT_ID, COURSE_ID 
FROM results
WHERE MARK NOT  IN (80, 90);

SELECT STUDENT_ID, COURSE_ID,MARK
FROM results
ORDER BY MARK desc ;

SELECT STUDENT_ID, COURSE_ID,MARK
FROM results
ORDER BY COURSE_ID,MARK;




SELECT MAX(MARK)
FROM results;

SELECT MIN(MARK)
FROM results;

SELECT COUNT(COURSE_ID)
FROM course;

SELECT SUM(MARK)
FROM results;

SELECT AVG(MARK)
FROM results;

SELECT AVG(NVL(MARK,0))
FROM results;

SELECT COURSE_ID,COUNT(COURSE_ID)
FROM student
GROUP BY(COURSE_ID);

SELECT COURSE_ID,COUNT(COURSE_ID)
FROM teacher
WHERE COURSE_ID >101
GROUP BY(COURSE_ID);

SELECT COURSE_ID,COUNT(COURSE_ID)
FROM teacher
GROUP BY(COURSE_ID)
HAVING COURSE_ID >101;


SELECT COURSE_ID,COUNT(COURSE_ID)
FROM student
GROUP BY(COURSE_ID)
HAVING COUNT(COURSE_ID)>3;




SELECT STUDENT_ID ,FNAME,LNAME
FROM student
where COURSE_ID IN(SELECT COURSE_ID
                  FROM teacher
                  WHERE TEACHER_ID=002);




SELECT STUDENT_ID,FNAME,LNAME
FROM student
WHERE COURSE_ID IN(SELECT COURSE_ID
                  FROM COURSE
                  WHERE DURATION=90
                  )
UNION ALL
SELECT STUDENT_ID,FNAME,LNAME
FROM student
WHERE COURSE_ID IN(SELECT COURSE_ID
               FROM teacher
               WHERE TEACHER_ID>005);

SELECT STUDENT_ID,FNAME,LNAME
FROM student
WHERE COURSE_ID IN(SELECT COURSE_ID
                  FROM COURSE
                  WHERE DURATION=90
                  )
UNION 
SELECT STUDENT_ID,FNAME,LNAME
FROM student
WHERE COURSE_ID IN(SELECT COURSE_ID
               FROM teacher
               WHERE TEACHER_ID>005);


SELECT t.TEACHER_ID,t.CONTACT
FROM teacher t
WHERE t.COURSE_ID IN(SELECT c.COURSE_ID
                   FROM COURSE c
                  WHERE c.COURSE_NAME='Database' OR C.COURSE_NAME='Web Devolopment')
INTERSECT

SELECT t.TEACHER_ID,t.CONTACT
FROM teacher t 
WHERE t.COURSE_ID IN(SELECT r.COURSE_ID
                  FROM results r
                  WHERE r.mark>=80);


SELECT l.LECTURE_ID,l.DURATION
FROM lecture l
WHERE l.COURSE_ID IN(SELECT COURSE_ID
                  FROM COURSE
                  WHERE DURATION=90)
MINUS
SELECT l.LECTURE_ID,l.DURATION
FROM lecture l
WHERE l.COURSE_ID IN(SELECT COURSE_ID
                  FROM teacher
                  WHERE TEACHER_ID=006);


SELECT STUDENT_ID,FNAME,LNAME
FROM student
WHERE COURSE_ID IN(SELECT COURSE_ID
                  FROM COURSE
                  WHERE DURATION=90
                  )
UNION 
SELECT STUDENT_ID,FNAME,LNAME
FROM student
WHERE COURSE_ID IN(SELECT COURSE_ID
               FROM teacher
               WHERE TEACHER_ID>005)
MINUS
SELECT STUDENT_ID,FNAME,LNAME
FROM student
WHERE COURSE_ID IN(SELECT COURSE_ID
               FROM results
               WHERE result='fail');



select s.STUDENT_ID,s.FNAME,s.LNAME,c.COURSE_NAME
FROM student s JOIN COURSE c
on s.COURSE_ID=c.COURSE_ID;

select s.STUDENT_ID,c.COURSE_NAME,c.DURATION
FROM student s JOIN COURSE c
USING(COURSE_ID); 

select t.TEACHER_ID,c.COURSE_NAME,c.DURATION
FROM teacher t NATURAL JOIN COURSE c;

select c.COURSE_NAME,t.TEACHER_ID,t.FNAME,t.LNAME
FROM course c LEFT OUTER JOIN teacher t
ON c.COURSE_ID=t.COURSE_ID;

SELECT s.STUDENT_ID ,s.FNAME,s.LNAME,t.TEACHER_ID
FROM student s LEFT OUTER JOIN teacher t
ON s.COURSE_ID=t.COURSE_ID;

SELECT s.STUDENT_ID ,s.FNAME,s.LNAME,t.TEACHER_ID
FROM student s RIGHT OUTER JOIN teacher t
ON s.COURSE_ID=t.COURSE_ID;

SELECT s.STUDENT_ID ,s.FNAME,s.LNAME,t.TEACHER_ID
FROM student s FULL OUTER JOIN teacher t
ON s.COURSE_ID=t.COURSE_ID;

SELECT t1.FNAME ,t2.LNAME
FROM teacher t1 INNER JOIN teacher t2
ON t1.COURSE_ID=t2.COURSE_ID;


SELECT c.COURSE_ID,t.TEACHER_ID
FROM course c CROSS JOIN teacher t;

