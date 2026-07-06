use de_scenario_qn;
-- scenario 1
/*Scenario: You are designing an Employee Management System for a company. 
Every new employee must have a unique Employee ID, and the application should automatically generate this ID without manual entry. 
Interview Question: Which SQL constraint(s) would you use to ensure each employee gets a unique, 
automatically generated Employee ID, and why? */

create table employee1(
empid int primary key auto_increment,
empname varchar(25));
insert into employee1(empid,empname) values(101,'ram');
insert into employee1(empname) values('ramesh');
select * from employee1;

-- scenario 2 
/* Scenario: A bank allows customers to register for internet banking. 
Each customer must register with a unique email address, and duplicate email IDs should not be allowed. 
Interview Question: Which SQL constraint would you use to prevent duplicate email addresses in the Customer table? Explain your choice.*/

create table bank(
customerid int primary key,
customername varchar(25),
emailid varchar(25) unique);
insert into bank values(1,'roo','roo@gmail.com');
insert into bank values(2,'rub','rub@gmail.com');
select * from bank;

-- scenario3
/* Scenario: A college has two tables: Department and Student. 
Every student must belong to an existing department. 
Students should not be assigned to a department that does not exist. 
Interview Question: Which SQL constraint would you use to maintain the relationship between the Student and Department tables and prevent invalid department assignments? */

create table department(
deptid int primary key,
deptname varchar(25));
insert into department values(1,'Hr');
insert into department values(2,'It');

create table student1(
stdid int primary key,
stdname varchar(25),
deptid int,
foreign key (deptid) references department(deptid));
insert into student1 values(101,'yoyo',1);

-- scenario 4
/*Scenario: An e-commerce company stores product prices in the database. 
The business rule states that the product price should always be greater than zero. 
Negative or zero prices should never be accepted. 
Interview Question: Which SQL constraint would you use to enforce this business rule and prevent invalid product prices? */

create table ecommerce(
productid int,
productname varchar(25),
productprice int check(productprice >0));
insert into ecommerce values(1,'book',200);
select * from ecommerce;

-- scenario 5
/* Scenario: A hospital is developing a Patient Registration System. 
Every patient must have a name, but if the patient's blood group is not entered during registration, it should automatically be stored as 'Unknown'. 
Interview Question: Which SQL constraints would you use to ensure the patient name is always provided and a default blood group is assigned when no value is entered? */

create table patient1(
patientid int,
patientname varchar(25) not null,
bloodgroup varchar(10) default('unknown'));
insert into patient1(patientid,patientname) values(1,'rrr');
select * from patient1;