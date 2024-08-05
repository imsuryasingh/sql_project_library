create database library;
show databases;
use library;

create table book(book_id int primary key, title varchar(20), author varchar(30),price double, available int );
create table borrowed_by(issue date, return_date date, due date);
create table publisher(pid int, address varchar(20), pub_name varchar(20));
create table member_details(mem_id int, mem_name varchar(30), address varchar(30), exp_date date, join_date date, mem_type varchar(20) );

insert into book values(50002, "Data structure", "dbca", 299, 4),
(5003, "algo", "basc", 365, 2);

insert into publisher values(101, "pune", "daman"),
							(102, "mumbai","rajkumar"),
                            (105, "vashi", "jadav");
                            
alter table member_details modify mem_id varchar(8);
alter table member_details rename column exp_date to  joining;
alter table member_details rename column join_date to exp;

desc member_details;
insert into member_details values("m111","rahit", "pune", "2022-2-25","2023-2-25", "non primier"  );

select * from book;

alter table borrowed_by add column mem_id int references member_details; 
alter table borrowed_by add column book_id int references book ;

insert into borrowed_by values();

desc borrowed_by;
select * from member_details;


use library;

insert into member_details values("m112","rahit", "pune", "2022-2-25","2023-2-25", "non primier"  );

update member_details set mem_name = "Rohit" where mem_id = "m112";

show databases;

-- Student Project
use student;

desc marks;
select * from marks;

insert into marks values(17,"Surya", "CS", 97);

delete from marks where student_id = 17;


