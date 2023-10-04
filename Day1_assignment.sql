create database assignments;

use assignments;

create table Books(Book_No	int(6), Book_Name VarChar(30), Author_name	Varchar(30), Cost int, Category varchar(10));

insert into Books values(101,'Let us C','Denis Ritchie', 450, 'System'),(102,'Oracle – Complete Ref','Loni',550,'Database'),(103,'Mastering SQL','Loni',250	,'Database'),(104,	'PL SQL-Ref',	'Scott Urman'	,750,	'Database');

Select * from books;

SELECT *
FROM books
WHERE cost BETWEEN 500 AND 700;

select * from books 
where Book_Name like 'O%';


select cost from books
where cost < (select avg(cost) from books);

CREATE TABLE copy_of_books AS
SELECT Book_No, Book_Name,Author_name,Cost,Category
FROM books;
truncate booksClone;
drop table copy_of_books;
select * from copy_of_books;
select * from booksClone;

CREATE TABLE copy_of_books LIKE books;

select min(cost) from books;
select max(cost) from books;


SET SQL_SAFE_UPDATES = 0;

 
 select Author_name 
from books
group by Author_name 
having count(distinct Book_name)>1 ;


update books
set cost = '550'
where book_name = 'Let us C';

update books
set cost = cost+150
where book_name = 'Let us C';

select book_name from books
where category = "database";

select book_name,cost from books
where category in( "database", 'system');

select * from books
where cost<500;

alter table books
add column published_year int after cost;
select * from books;

update books
set published_year = '1997'
where book_no=101;

update books
set published_year = '2000'
where book_no=104;

alter table books
add column subscriber int after Author_name;
select * from books;

update books
set subscriber = '9000'
where book_no=101;

desc books;

alter table books
Modify  category varchar(100);

select * from books;


