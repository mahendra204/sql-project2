select * from employeedetails
select count(*) from employeedetails

select count(*) from employeedetails where salary<(select avg(salary) from employeedetails)

select count(*) from employeedetails where salary>(select avg(salary) from employeedetails)

select emp_id,first_name from employeedetails where salary>(select avg(salary) from employeedetails)

select emp_id,first_name from employeedetails where salary<(select avg(salary) from employeedetails)

select first_name, salary from employeedetails where salary in (select max(salary) as second_highest_salary from employeedetails
 where salary<(select max(salary) from employeedetails))

 select * from employeedetails where salary not in (select top 2 salary from employeedetails where salary>(select min(salary) 
 from employeedetails))


alter table employeedetails add constraint pk_emp_id primary key (emp_id)

drop table projectdetails

create table projectdetails(project_id int identity(1,1),emp_id int, foreign key (emp_id) references employeedetails(emp_id), projectName varchar(40))

insert into projectdetails values (1,'CLP'),(1,'servay management'),(2,'HR management'),(3,'Task Track'),(3,'GRS'),(3,'DDS'),(4,'HR management'),(6,'GL management')
select * from projectdetails
select * from employeedetails
select distinct(dept) from employeedetails

select dept,count(dept) as noof_same_typedepts,sum(salary) as totalsalary from employeedetails group by dept 

select dept,count(dept) as noof_same_typedepts,sum(salary) as totalsalary from employeedetails group by dept having sum(salary)<4222

select dept, sum(salary) as totalsalary from employeedetails group by dept order by totalsalary desc

select dept, avg(salary) as averagesalary from employeedetails group by dept order by avg(salary) desc

select dept, avg(salary) as averagesalary from employeedetails group by dept order by dept

select dept, max(salary) as maximumsalary from employeedetails group by dept order by maximumsalary desc

select dept, min(salary) as minimumsalary from employeedetails group by dept order by minimumsalary

select * from projectdetails

select projectName,count(*) as noofemployees from projectdetails group by projectName having count(*)>1

