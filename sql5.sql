use employeedb;
 
DELIMITER $$
	CREATE procedure allstudent()
	BEGIN
	-- logic
	SELECT * FROM student;
	END $$
   
call allstudent();
-- create with parameter

DELIMITER $$
create procedure getdender(IN var1 varchar(7))
BEGIN
select * FROM student where gender = var1;
END $$

call getdender('Female');


-- out
DELIMITER $$
create procedure mostearner3(OUT highestpaid INT)
BEGIN
SELECT MAX(salary) into highestpaid 
from payroll;
END $$
-- select * from payroll;
call mostearner3(@onyeka);
select @onyeka

-- inout
Delimiter $$
CREATE procedure displaySalary(INOUT var1 INT)
BEGIN
select salary into var1 
from payroll
where id = var1;
END $$
SET @faith = 2;
call displaySalary(@faith);
select @faith;

SHOW procedure status
where db = 'employeedb';

-- drop
drop procedure mostearner2;

CREATE VIEW allmale AS 
SELECT * FROM payroll
where gender = 'Male';

SELECT * FROM allmale;
UPDATE payroll 
SET country = 'Biafra'
where lastname = 'Selwood';

select * from payroll;












 