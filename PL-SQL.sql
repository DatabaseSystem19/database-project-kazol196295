SET SERVEROUTPUT ON

DECLARE
max_number results.MARK%type;
max_student_id results.STUDENT_ID%type;

BEGIN
SELECT MAX(mark) into max_number
from results;
SELECT STUDENT_ID into max_student_id
From results
where MARK=max_number;
DBMS_OUTPUT.PUT_LINE('Student ID '|| max_student_id || ' have max number which is ' || max_number);
END;
/


DECLARE
student_mark results.MARK%type;
name student.FNAME%type :='alif';

BEGIN
SELECT MARK into student_mark
FROM student ,results
WHERE student.STUDENT_ID=results.STUDENT_ID AND
FNAME=name;
DBMS_OUTPUT.PUT_LINE('STUDENT NAME: '|| name || ' MARK: ' || student_mark);
END;
/


DECLARE
teacher_name  teacher.FNAME%type := 'masum';
coursename course.COURSE_NAME%type;

BEGIN
SELECT COURSE_NAME into coursename
FROM teacher,course
WHERE teacher.COURSE_ID=course.COURSE_ID AND
FNAME=teacher_name;
DBMS_OUTPUT.PUT_LINE('Teacher name:' || teacher_name || ' Course Name: ' || coursename);
END;
/


DECLARE
name student.FNAME%type :='jeba';
student_mark results.MARK%type;
grade VARCHAR(5);
BEGIN
SELECT MARK into student_mark
FROM student ,results
WHERE student.STUDENT_ID=results.STUDENT_ID AND
FNAME=name;

IF student_mark >=80 THEN
   grade :='A+';
ELSIF student_mark>=70 THEN
   grade :='A';
ELSIF student_mark>=60 THEN
   grade :='A-';
ELSIF student_mark>=50 THEN
   grade :='B';
ELSIF student_mark>=40 THEN
   grade :='C';
ELSE
   grade :='F';
END IF;
DBMS_OUTPUT.PUT_LINE('STUDENT NAME: '|| name || ' GRADE: ' || grade);
END;
/


DECLARE
CURSOR lec_cur IS SELECT TIME , DURATION FROM lecture;
lec_record lec_cur%ROWTYPE;

BEGIN
OPEN lec_cur ;
  FOR i in 1..6
  LOOP
  FETCH lec_cur INTO lec_record;
  DBMS_OUTPUT.PUT_LINE('DATE : ' || lec_record.TIME || ' DURATION : ' || lec_record.DURATION);
  END LOOP;
CLOSE lec_cur;
END;
/

DECLARE
CURSOR lec_cur IS SELECT TIME , DURATION FROM lecture;
lec_record lec_cur%ROWTYPE;

BEGIN
OPEN lec_cur ;
  WHILE lec_cur%ROWCOUNT <6
  LOOP
  FETCH lec_cur INTO lec_record;
  --EXIT WHEN lec_cur%ROWCOUNT >6;
  DBMS_OUTPUT.PUT_LINE('DATE : ' || lec_record.TIME || ' DURATION : ' || lec_record.DURATION);
  END LOOP;
CLOSE lec_cur;
END;
/

DECLARE
CURSOR lec_cur IS SELECT TIME , DURATION FROM lecture;
lec_record lec_cur%ROWTYPE;

BEGIN
OPEN lec_cur ;
  LOOP
  FETCH lec_cur INTO lec_record;
  EXIT WHEN lec_cur%ROWCOUNT >6;
  DBMS_OUTPUT.PUT_LINE('DATE : ' || lec_record.TIME || ' DURATION : ' || lec_record.DURATION);
  END LOOP;
CLOSE lec_cur;
END;
/

CREATE OR REPLACE PROCEDURE getcoursename IS
c_id course.COURSE_ID%type;
c_name course.COURSE_NAME%type;

BEGIN
c_id :=100;
SELECT COURSE_NAME into c_name
from course 
where COURSE_ID=c_id;
DBMS_OUTPUT.PUT_LINE('Course ID : ' || c_id || ' Course name : ' || c_name);
END;
/
SHOW ERROR;


BEGIN
getcoursename();
END;
/

CREATE OR REPLACE PROCEDURE add_student (
s_id student.STUDENT_ID%type,
s_name student.FNAME%type,
c_id student.COURSE_ID%type) IS
BEGIN
INSERT INTO student (STUDENT_ID,FNAME,COURSE_ID)
VALUES (s_id,s_name,c_id);
COMMIT;
END add_student;
/
SHOW ERRORS;

BEGIN
add_student(23,'karib',106);
END;
/

CREATE OR REPLACE FUNCTION avg_mark RETURN NUMBER IS
avg_mark results.MARK%type;
BEGIN
SELECT AVG(MARK) INTO avg_mark
FROM results;
RETURN avg_mark;
END;
/
SHOW ERRORS;

BEGIN
dbms_output.put_line('Average mark: ' || avg_mark);
END;
/


CREATE OR REPLACE FUNCTION teacher_name(
   t_id IN teacher.TEACHER_ID%type) RETURN VARCHAR IS
t_name teacher.FNAME%type;
BEGIN
SELECT FNAME INTO t_name
From teacher
WHERE TEACHER_ID=t_id;
RETURN t_name;
END;
/
SHOW ERRORS;


BEGIN
dbms_output.put_line('Teacher name: ' || teacher_name(003));
END;
/



CREATE OR REPLACE TRIGGER check_mark BEFORE INSERT OR UPDATE ON
results
FOR EACH ROW
DECLARE
c_min constant number(8) := 0;
c_max constant number(8) := 100;
BEGIN
IF :new.mark > c_max OR :new.mark < c_min THEN
RAISE_APPLICATION_ERROR(-20000,'New Mark is invalid');
END IF;
END;
/
SHOW ERRORS;
INSERT INTO results VALUES 
(025,100,'pass',105);


SAVEPOINT c1;
INSERT INTO results VALUES 
(21,100,'pass',75);
INSERT INTO results VALUES 
(22,100,'pass',75);

ROLLBACK to c1;

SELECT * FROM results;


SELECT SYSDATE FROM DUAL;
SELECT CURRENT_DATE FROM DUAL;
SELECT SYSTIMESTAMP FROM DUAL;
