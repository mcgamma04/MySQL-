use employeedb;
CREATE TABLE IF NOT EXISTS course_reg(
c_id int not null,
lecture Varchar(23),
s_id int
);

INSERT INTO course_reg values(101,'Akon', 1);
INSERT INTO course_reg values(101,'Akon', 3);
INSERT INTO course_reg values(102,'Bkon', 2);
INSERT INTO course_reg values(103,'Ckno', 3);
INSERT INTO course_reg values(103,'Ckno', 1);

CREATE TABLE IF NOT EXISTS subject(
s_id int not null,
name Varchar(23)
);
INSERT INTO subject values(1,'Java');
INSERT INTO subject values(2,'C++');
INSERT INTO subject values(3,'Python');

select * from subject;
select * from course_reg;

-- inner join
select r.c_id, r.lecture, s.name
from course_reg r
 join
subject s
on 
r.s_id = s.s_id;
use school;
select * from department;
select * from student;

select d.name, s.firstname, s.lastname,s.gender
from 
student s
cross  join 
department d ;

CREATE TABLE family_table(
	member_id varchar(10) PRIMARY KEY,
    member_name varchar(50),
    member_age int(11),
    parent_id varchar(10)
);

INSERT INTO family_table
VALUES('F1', 'Daniel', 4, 'F5');

INSERT INTO family_table
VALUES('F2', 'Carol', 10, 'F5');

INSERT INTO family_table
VALUES('F3', 'Micheal', 12, 'F5');

INSERT INTO family_table(member_id, member_name, member_age)
VALUES('F4', 'Johnson', 3);

INSERT INTO family_table
VALUES('F5', 'Maryam', 40, 'F6');

INSERT INTO family_table(member_id, member_name, member_age)
VALUES('F6', 'Stewart', 70);

INSERT INTO family_table
VALUES('F7', 'Raheem', 6, 'F4');

INSERT INTO family_table
VALUES('F8', 'Asha', 6, 'F4');

SELECT * FROM family_table

-- self join
