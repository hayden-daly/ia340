insert into student (s_email, s_name, major)
values ('s1@jmu.edu', 's1', 'IA'),
('s2@jmu.edu', 's2', 'IA'),
('s3@jmu.edu', 's3', 'ISAT'),
('s4@jmu.edu','s4', 'ISAT')

-- select * from student

insert into professor (p_email,p_name,office)
values('p1@jmu.edu','p1', 'o1'),
('p2@jmu.edu', 'p2', 'o2');

insert into course(c_number, c_name, room, p_email)
values('c1', 'postgresql', 'r1', 'p1@jmu.edu'),
('c2', 'mongodb', 'r2', 'p2@jmu.edu'),
('c3', 'twitter', 'r1', 'p1@jmu.edu')

('s1@jmu.edu', 'c1'),
('s2@jmu.edu', 'c1'),
('s3@jmu.edu', 'c1'),
('s4@jmu.edu', 'c2'),
('s2@jmu.edu', 'c3'),
('s3@jmu.edu', 'c3')

--Q2.5
-- insert professor first, 

insert into professor (p_email, p_name, office)
values ('p3@jmu.edu', 'p3', 'o3') ;

insert into course (c_number, c_name, room, p_email)
values ('c4', 'facebook','r1', 'p3@jmu.edu')

update course 
set p_email = 'p3@jmu.edu'
where p_email = 'p1@jmu.edu';

delete from professor 
where p_email = 'p1@jmu.edu'

select * from enroll

select c_number, count(*) as num_student
from enroll
group by c_number
order by num_student desc
limit 1

select professor.p_name,
       course.c_name
from professor
inner join course
on professor.p_email = course.p_email

elect professor.p_name,
        count(course.c_name) as num_course
from professor
inner join course
on professor.p_email = course.p_email
group by professor.p_name
order by num_course desc
limit 1;

