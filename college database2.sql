USE college;
create table dept(
id int primary key, 
name varchar(50));
insert into dept 
values
(101,"english"),
(102,"IT");
create table teacher(
id int primary key,
name varchar(50),
deptid INT,
foreign key (deptid) references dept(id)
on update cascade
on delete cascade);
drop table teacher;
INSERT INTO teacher values
(101,"Adam",101),
(102,"Eve",102);
select * from teacher;
update dept set id =103 where id =102;