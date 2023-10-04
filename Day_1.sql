CREATE DATABASE learning_db;
use learning_db;

CREATE TABLE employee(empid int, name varchar(30) );
desc employee;
desc student;

insert into employee values(1,'Sonali');
insert into employee values(2,'Vidya');
insert into employee values(3,'Yash');
insert into employee values(4,'Priya');

insert into employee(empid, name) values(5,'Riya'),(6,'Vinu');

select * from employee;
show tables;


create table member (Member_Id int(5) primary key,Member_Name varchar(20),Member_address varchar(10),Acc_Open_Date date,Membership_type enum('Lifetime','Annual','Half Yearly','Quarterly'),Fees_paid int(5),Max_Books_Allowed int(2),Penalty_Amount double);

create table shirts (name varchar(30),size enum('xsmall','small','medium','large'));

desc shirts;
insert into shirts values('POLO','small');

insert into shirts values('corcs','large');
insert into shirts values('JP','asdf');
insert into shirts values('JP','xsmall');

select * from shirts;



