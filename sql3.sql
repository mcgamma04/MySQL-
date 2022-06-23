CREATE DATABASE IF NOT exists school;
use school;
create table student(
sid int not null primary key,
firstname varchar(23),
lastname varchar(23),
gender varchar(7),
depid int,
courseId int
);

CREATE table if not exists department(
 depid int,
 name varchar(30)
 );
 
 CREATE table if not exists courses
 (
 cid int,
 name varchar(34)
 );
 
 create table if not exists schoolfees(
 feeid int,
 sid int,
 deptid int,
 amount decimal(10,2),
 date Date,
 status varchar(20),
 mode_of_payment varchar(34),
 transid varchar(39),
 desciption VARCHAR(56)
 );
 use school;
select * from department;
select * from student;

-- inner join --
select s.firstname, s.lastname, s.gender, d.name
from student s 
join
department d
on s.depid =  d.depid;
 
-- left join
select s.firstname, s.lastname, s.gender, d.name
from department d 
left join
student s
on s.depid =  d.depid;

-- right join
select s.firstname, s.lastname, s.gender, d.name
from student s 
right join
department d
on s.depid =  d.depid;

-- union join

 select s.*, d.*
from student s 
cross join
department d;