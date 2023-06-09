drop table results;
drop table lecture;
drop table teacher;
drop table student;
drop table course;

CREATE TABLE course
  (COURSE_NAME   VARCHAR2(20),
   COURSE_ID    NUMBER(3) NOT NULL,
   DURATION      NUMBER(3),
   COURSE_START DATE,
   COURSE_END   DATE,
   PRIMARY KEY (COURSE_ID)
);


CREATE TABLE student
  (STUDENT_ID      NUMBER(3) NOT NULL,
   FNAME           VARCHAR2(15),
   LNAME           VARCHAR2(15),
   GENDER          VARCHAR2(10),
   EMAIL           VARCHAR2(40) ,
   CONTACT        NUMBER(12),
   COURSE_ID       NUMBER(3) NOT NULL,
   PRIMARY KEY (STUDENT_ID),
   FOREIGN KEY (COURSE_ID) REFERENCES course ON DELETE CASCADE
) ;



CREATE TABLE teacher 
(
   TEACHER_ID      NUMBER(3) NOT NULL,
   FNAME           VARCHAR2(15),
   LNAME           VARCHAR2(15),
   GENDER          VARCHAR2(10),
   EMAIL           VARCHAR2(40) ,
   CONTACT        NUMBER(12),
   COURSE_ID       NUMBER(3) NOT NULL,
   PRIMARY KEY (TEACHER_ID),
   FOREIGN KEY (COURSE_ID) REFERENCES course ON DELETE CASCADE
) ;


CREATE TABLE lecture
  (
   LECTURE_ID      NUMBER(3) NOT NULL,
   TIME            DATE,
   DURATION        VARCHAR2(15),
   LECTURE_START   VARCHAR2(20),
   LECTURE_END     VARCHAR2(20) ,
   STUDENT_ID      NUMBER(3) NOT NULL,
   TEACHER_ID      NUMBER(3) NOT NULL,
   COURSE_ID       NUMBER(3) NOT NULL,
   PRIMARY KEY (LECTURE_ID,STUDENT_ID),
   FOREIGN KEY (STUDENT_ID) REFERENCES student ON DELETE CASCADE,
   FOREIGN KEY (TEACHER_ID) REFERENCES teacher ON DELETE CASCADE,
   FOREIGN KEY (COURSE_ID) REFERENCES course ON DELETE CASCADE
) ;

CREATE TABLE results
(
    STUDENT_ID     NUMBER(3) NOT NULL,
    COURSE_ID      NUMBER(3) NOT NULL,
    RESULT         VARCHAR2(10),
    MARK           NUMBER(3),
    PRIMARY KEY(STUDENT_ID),
    FOREIGN KEY (STUDENT_ID) REFERENCES student ON DELETE CASCADE,
    FOREIGN KEY (COURSE_ID) REFERENCES course ON DELETE CASCADE
);


DESCRIBE course;
DESCRIBE student;
DESCRIBE teacher;
DESCRIBE lecture;
DESCRIBE results;