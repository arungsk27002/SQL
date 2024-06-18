USE college;
CREATE TABLE student (
rollno INT primary key,
name varchar(50),
marks int not null,
grade varchar(5),
city varchar(50));
drop table student;
INSERT INTO student (rollno,name,marks,grade ,city) 
VALUES (101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"), 
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",62,"D","Delhi"),
(106,"farah",82,"B","Delhi");
ALTER TABLE student 
add column age int default 19;
select * from student;
ALTER TABLE student drop column age;
alter table student modify age varchar(2);
UPDATE  STUDENT set age =19 where rollno=107;
alter table students rename to student;
alter table student change column cityname city varchar(20);
truncate table student;
alter table student change name full_name varchar(50);
alter table student drop grade;
delete from student where marks<80;
 