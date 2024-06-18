CREATE DATABASE IF NOT EXISTS XYZ;
CREATE TABLE employeeinfo3 (
id INT PRIMARY KEY,
name VARCHAR(50) ,
salary FLOAT not null);
INSERT INTO employeeinfo3 
VALUES
(1,"",25000),
(2,"bob",30000),
(3,"casey",40000);
INSERT INTO employeeinfo3 (id, salary) values (5, 40000),(6,50000);
SELECT * FROM employeeinfo3;
CREATE TABLE customerid (
cid int ,
foreign key (cid) references employeeinfo3(id));
INSERT INTO customerid (cid) values (5);
SELECT * FROM customerid;
CREATE TABLE city (
id int default 10,
age tinyint unsigned ,
cityname varchar(50),
constraint chk check (age>=20 and cityname in ("delhi","kharagpur")));
drop table city;
INSERT INTO city (age,cityname) values (101,"delhi"),(39,"kharagpur"),(22,"kharagpur");
select * from city;
select id , cityname from city;
select distinct cityname from city;
select cityname, id from city where  age>38 or cityname ="delhi";