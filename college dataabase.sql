CREATE DATABASE college;
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
select * from student where marks-10 >80 or city in ("delhi","pune") order by name asc;
select * from student where marks between 80 and 90; 
select * from student where city in ("delhi","mumbai") limit 2;
select * from student where city not in ("pune","mumbai");
select grade , count(city),min(marks) from student group by grade order by grade asc; 
select avg(marks),city from student group by city order by avg(marks) desc;
select city,count(name) from student group by city having max(marks) >90;
UPDATE student set grade = "S" WHERE grade = "A";
update student set marks=marks +1;
update student set grade ="B" WHERE marks between 80 and 90;
update student set marks=60 where rollno = 105;
delete from student where marks <70;
