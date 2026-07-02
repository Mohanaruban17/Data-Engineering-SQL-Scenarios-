create database de_scenario_qn;
use de_scenario_qn;
-- Types of Command Scenario Qn
-- Scenario 1
create table employee(
empid int,
empname varchar(50),
department varchar(50),
salary int);
insert into employee values(101,'john','it',45000);
insert into employee values(102,'mary','hr',35000);
insert into employee values(103,'david','finance',55000);
insert into employee values(104,'sam','it',40000);
insert into employee values(105,'priya','hr',38000);
-- Display all employee records.
select * from employee;

-- Scenario 2
Create table student(
studentid int,
studentname varchar(50),
course varchar(30));
insert into student values (1, 'Rahul', 'SQL');
insert into student values (2, 'Priya', 'Python');
insert into student values (3, 'Arun', 'Power BI');
insert into student values(4, 'Sneha', 'Java');
insert into student values(5, 'Karthik', 'SQL');
-- Modify the Student table by adding a new column called Email.
alter table student add Email varchar(50);

-- Scenario 3
create table product(
productid int,
productname varchar(50),
price int);
insert into product values (101, 'laptop', 60000);
insert into product values (102, 'mouse', 800);
insert into product values (103, 'keyboard', 1200);
insert into product values (104, 'monitor', 15000);
insert into product values (105, 'printer', 9000);
-- Update the price of Product ID 103 to 1500. 
update product set Price = 1500 where productid = 103;

-- Scenario 4
create table patient(
patientid int,
patientname varchar(50),
disease varchar(50));
insert into patient values (1, 'Ramesh', 'Fever');
insert into patient values (2, 'Suresh', 'Cold');
insert into patient values (3, 'Anitha', 'Diabetes');
insert into patient values (4, 'Meena', 'Asthma');
insert into patient values (5, 'Kumar', 'Typhoid');
-- Delete Patient ID 2 from the table.
delete from patient where patientid = 2;
select * from patient;

-- Scenario 5
create table eventregistration(
stdid int,
studentname varchar(50),
eventname varchar(50));
insert into eventregistration values (1, 'Ramesh', 'Dance');
insert into eventregistration values (2, 'Priya', 'Singing');
insert into eventregistration values (3, 'Anitha', 'Drawing');
insert into eventregistration values (4, 'Meena', 'Quiz');
insert into eventregistration values (5, 'Kumar', 'Drama');
-- Remove all records from the table without deleting the table structure.
truncate table eventregistration;

-- Scenario 6
-- Rename the Employee table to Staff. 
alter table employee rename to staff;

-- Scenario 7
create table accounts(
accountno int,
customername varchar(50),
balance int);
insert into accounts values (1001, 'John', 50000);
insert into accounts values (1002, 'Mary', 30000);
insert into accounts values (1003, 'David', 70000);
insert into accounts values (1004, 'Sam', 45000);
insert into accounts values (1005, 'Priya', 60000);
-- Update Account No. 1002's balance to 35000 and permanently save the changes. 
update accounts set balance = 35000 where accountno = 1002;
commit;

-- Scenario 8
create table bookdetail(
bookid int,
bookname varchar(50),
author varchar(50));
insert into bookdetail values (1, 'SQL Basics', 'James');
insert into bookdetail values (2, 'Python Guide', 'Robert');
insert into bookdetail values (3, 'Java Programming', 'John');
insert into bookdetail values (4, 'Power BI', 'David');
insert into bookdetail values (5, 'Data Science', 'Peter');
-- Delete Book ID 3 and restore it before committing the transaction.
delete from bookdetail where bookid = 3;
rollback;

-- Scenario 9
-- Give Student1 permission to view the Employee table only.
create user 'student1'@'localhost' identified by 'root1';
grant select on aa.employee to 'student1'@'localhost';

-- Scenario 10 
create table customer(
customerid int,
customername varchar(50),
city varchar(50));
insert into customer values (1, 'Ramesh', 'Chennai');
insert into customer values (2, 'Priya', 'Bangalore');
insert into customer values (3, 'Anitha', 'Hyderabad');
insert into customer values (4, 'Meena', 'Coimbatore');
insert into customer values (5, 'Kumar', 'Madurai');
-- Delete the entire table permanently from the database.
Drop table Customer;
