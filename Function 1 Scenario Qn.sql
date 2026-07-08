-- scenario 1
/* A company stores employee names in different formats such as lowercase, uppercase, and mixed case. 
The HR department wants a report where all employee names are displayed in uppercase. 
Write a SQL query to generate the required report. */

use de_scenario_qn;
select * from employee;
select empid, upper(empname) as emp_name, department, salary from employee;

-- scenario 2
/* An online shopping company stores product prices with decimal values. The finance team wants to generate a report showing: 
• Original Price • Rounded Price • Ceiling Price • Floor Price Write a SQL query to generate the report. */

create table product2(
productid int,
productname varchar(50),
price decimal(10,2));
insert into product2 values (101, 'laptop', 60000.56);
insert into product2 values (102, 'mouse', 8000.67);
insert into product2 values (103, 'keyboard', 1200.33);
insert into product2 values (104, 'monitor', 15000.22);
insert into product2 values (105, 'printer', 9000.56);
insert into product2 values (106, 'scanner', 11000.46);
select price , round(price) as rounded_price , ceil(price) as ceiling_price , floor(price) as floor_price from product2; 

-- scenario 3
/* The HR department wants to analyze employee joining details. 
Generate a report displaying: • Employee Name • Joining Date • Joining Year • Joining Month • Joining Day 
Write a SQL query to produce the report. */
use ruban;
select empname,joiningdate,year(joiningdate) as joining_year,
month(joiningdate) as joining_month,
day(joiningdate) as joining_day from employee1;

-- scenario 4
/* A customer database contains NULL values in mobile numbers and email addresses. 
The customer support team wants a report where NULL values are replaced with appropriate display values without modifying the original data. 
Write a SQL query to generate the report. */

create table de_scenario_qn.customer(
customerid int primary key,
customername varchar(25),
mobileno varchar(25),
emailid varchar(25));
use de_scenario_qn;
insert into customer values(101,'ruban',999922222,'ruban@email.com');
insert into customer values(102,'rub',979797979,null);
insert into customer values(103,'mohan',null,'mohan@gmail.com');
insert into customer values(104,'rook',null,null);
insert into customer values(105,'ruban',737227722,'ruban1@gamil,com');
insert into customer values(106,'ruban',7878797632,null);
insert into customer values(107,'ramesj',null,null);

select customerid,customername,ifnull(mobileno,'not available'),ifnull(emailid,'not available') from customer;

-- scenario 5
/* A training institute wants to categorize students based on their marks. 
Generate a report that displays: • Student Name • Marks • Performance Status based on a condition The report should classify students according to the business rule provided by the trainer. 
Write a SQL query to generate the report. */

Create table student2(
studentid int,
studentname varchar(50),
mark int,
course varchar(30));
insert into student2 values (1, 'Rahul',90, 'SQL');
insert into student2 values (2, 'Priya',85, 'Python');
insert into student2 values (3, 'Arun',78, 'Power BI');
insert into student2 values(4, 'Sneha',67, 'Java');
insert into student2 values(5, 'Karthik',56, 'SQL');
insert into student2 values(6, 'Karik',86, 'DE');
insert into student2 values(7, 'Kiran',42, 'DA');
select * from student2;
select studentname,mark,if(mark>=70,'Good','Average') as result from student2;

