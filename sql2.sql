use employeedb;
show tables;
describe payroll;
select * from payroll;
select firstname, lastname, gender 
from payroll;
-- count all record
select count(*) from payroll;
 -- count only female
 select count(*) as totalFemale
 from payroll
 where gender = 'Female';

-- highest paid employee
select firstname, max(salary) as highest_paid
from payroll;
-- Lowest paid employee
select firstname , min(salary) as lowest_paid
from payroll;
-- Limit 
select * from payroll
order by salary asc
limit 1;

select * from payroll
order by salary DESC
limit 1;

-- DISLAY SECOND highest paid employee;
-- first method
select * from payroll
order by salary DESC
limit  1
OFFSET 1;
-- SUBQUERY
select max(salary)
from payroll
where salary 
<
(select  max(salary)
from payroll);

-- between
select * from payroll
where id between 1 and 20;
-- distinct
select count( distinct country) from payroll;
-- sum
select sum(salary) as totla_salary 
from payroll;
-- logical
-- not 
select * from payroll
where country = 'Nigeria'
-- or 
select * from payroll
where country = 'Nigeria'
or country = 'China';

-- and  
select * from payroll
where country = 'Nigeria'
and gender = 'Male'; 

select * from payroll
where email = 'rpleass3z@miitbeian.gov.cn'
and password = '2xsofV';

select  country , sum(salary) as sal from payroll
group by country
having sal < 3892131.61;

-- salary above avearage salary
select  sum(salary) as total
from payroll
group by country
having 
total >
(select avg(salary)
from payroll)
































