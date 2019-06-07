use school;
-- drop table pupils;
-- drop table grades;
-- create table pupils (pupil_no int, first_name varchar(30), parent_no char(13), primary key(pupil_no));
-- create table grades (grade_id int, pupil_id int, topic varchar(20), marks int, primary key(grade_id), foreign key(pupil_id) references pupils(pupil_no));
-- insert into pupils values ('1', 'Chris', '07950000000'), ('2', 'Danny', '07940000000'), ('3', 'Johnny', '07930000000'),('4', 'Al', '077920000000'),('5', 'Adrian', '07910000000');
-- insert into grades values ('1', '1', 'Maths', '70'),('2', '1', 'Physics', '90'),('3', '1', 'Chem', '100'),('4', '2', 'Physics', '30'),('5', '2', 'Chem', '40'),('6', '3', 'Physics', 20),('7', '3', 'Chem', '10');
-- update grades set marks = '45' where grade_id = 1;
-- update grades set marks = '55' where grade_id = 2;
-- update grades set marks = '60' where grade_id = 3;
-- select*from grades;

-- select first_name from pupils where first_name like '%n%'
-- insert into pupils (pupil_no, first_name) values ('6', 'Hugo');
-- select first_name from pupils where parent_no is null;
-- select topic, marks/60*100 Marks from grades;
-- select marks from grades where pupil_id = (select pupil_no from pupils where first_name = 'Chris')
select marks, topic from grades where pupil_id in (select pupil_no from pupils where first_name like '%y')