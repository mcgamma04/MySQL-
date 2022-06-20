create database if not exists employeedb;
use employeedb;
CREATE TABLE IF NOT EXISTS record
(
id int auto_increment primary key,
firstname VARCHAR(30),
lastname varchar(30),
gender varchar(7),
email varchar(50),
password varchar(50),
country varchar(40),
date_of_birth date
);
show tables ;
describe record;

-- ADD record to database table
insert into record(
firstname,lastname,gender,email,password,country,date_of_birth)
values('Green','Isreal','Female',
'green@gmail.com','green2300','England','2000-11-07');

-- select
select * from record;
-- update
UPDATE record SET firstname  = 'Emeka' where id =  2;
-- delete
DELETE from record where id = 3;


create table payroll (
	id INT,
	firstname VARCHAR(50),
	lastname VARCHAR(50),
	gender VARCHAR(50),
	email VARCHAR(50),
	password VARCHAR(50),
	salary VARCHAR(50),
	country VARCHAR(50),
	date_of_birth DATE
);
select * from payroll;
-- where clause
select * from payroll where country = 'Nigeria';
-- display record of employee whose country is Nigeria and has male or female 
-- gender
select * from payroll 
where country = 'Nigeria'
and
gender in('Male','Female') ;
-- count
select count(*) as total_record from payroll;

select count(*) as total_record from payroll
where gender = 'Male';
-- ASC desc
SELECT id,firstname from payroll 
order by id DESC ;
-- SUM
select sum(salary)as total_salary 
from payroll;
-- Limit
select * from payroll
limit 5;

select * from payroll where id >= 5 
limit 10;

-- second highest earner
select max(salary) 
from payroll
where salary <
(
select max(salary) 
from payroll
);

-- second method offset
select * from payroll
order by salary desc
limit 1 
offset 1
;










