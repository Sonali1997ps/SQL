select * from employee;

select * from employee order by empid desc;

select * from cars_india_dataset;

select * from cars_india_dataset where maker = 'Nissan' order by Displacement;

select * from cars_india_dataset where maker like 'H%' order by Displacement;

select count(*), maker from cars_india_dataset group by maker;

select count(*) as 'totcnt' , maker from cars_india_dataset group by maker;

select count(*) as 'total', type from cars_india_dataset group by type order by Type desc;

select count(*) as 'total', type, fuel from cars_india_dataset where fuel='Petrol' group by type having count(*)>10 ;

select distinct type, fuel from cars_india_dataset;

insert into department values(103,'IT'),(104,'payroll'),(105,'support');

select * from department;
select * from employee_details;


create table employee_details(id int primary key not null, name varchar(40), address varchar(40), age int, dept_Id int, foreign key (dept_Id) References department(deptid));

insert into employee_details values(1,'Riya', 'Pune', 26, 102),(2,'Priya','Mumbai', 35, 101),(3,'Jiya', 'Delhi', 25, 100),(4,'niya', 'Pune', 26, 102);

select d.deptname, e.id,e.name from department d inner join employee_details e on e.dept_id = d.deptid where name = 'Priya';

select d.deptid,d.deptname,e.name from department d left join employee_details e on d.deptid=e.dept_id; 

 create table Atable (aid int primary key);
 alter table atable add name varchar(20);
   insert into atable values (1,'one');


   create table Btable (bid int primary key);
   alter table btable add name varchar(20);
insert into btable values (11,'eleven');


create table ctable (aid int,bid int,foreign key(aid) references atable(aid),foreign key(bid) references btable(bid));
insert into ctable values(1,11);
 select a.aid "A",b.bid "B" from atable a,btable b, ctable c where b.bid=c.bid and c.aid = a.aid;
 
 truncate ctable;
truncate atable;
truncate btable;

drop table btable;



insert into atable values (1,'one');

insert into ctable values (1,11);
insert into ctable values (1,12);

select a.name,b.name from atable a,btable b, ctable c where b.bid=c.bid and c.aid = a.aid;

 create table emp (empid int primary key, name varchar(30), salary int);
  create table dept (departmentid int primary key, deptname varchar(30));
   create table organisation (empid int ,deptid int,foreign key (empid) References emp(empid), foreign key (deptid) References dept(departmentid));




 
 
