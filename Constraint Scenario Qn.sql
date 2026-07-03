use de_scenario_qn;
-- scenario 1
create table employee1(
empid int primary key auto_increment,
empname varchar(25));
insert into employee1(empid,empname) values(101,'ram');
insert into employee1(empname) values('ramesh');
select * from employee1;

-- scenario 2
create table bank(
customerid int primary key,
customername varchar(25),
emailid varchar(25) unique);
insert into bank values(1,'roo','roo@gmail.com');
insert into bank values(2,'rub','rub@gmail.com');
select * from bank;

-- scenario3
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
create table ecommerce(
productid int,
productname varchar(25),
productprice int check(productprice >0));
insert into ecommerce values(1,'book',200);
select * from ecommerce;

-- scenario 5
create table patient1(
patientid int,
patientname varchar(25) not null,
bloodgroup varchar(10) default('unknown'));
insert into patient1(patientid,patientname) values(1,'rrr');
select * from patient1;