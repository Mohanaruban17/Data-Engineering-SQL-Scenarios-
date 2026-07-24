use de_scenario_qn;

-- scenario 1
/* The HR department wants to generate a report showing employee details along with their department names. 
Display the Employee ID, Employee Name, Department Name, and Salary for employees who are assigned to a valid department. 
Sort the report by Salary in descending order. */

select * from department;
insert into department values(3,'Sales'),
(4,'Finance');
create table emp (emp_id int,emp_name varchar(25),deptid int,salart decimal(10,2));
insert into emp values(101,'aaa',2,45000.00),
(102,'bbb',1,55000.00),(103,'ccc',3,56777.77),(104,'eee',5,67888.88),(105,'fff',3,78878.99);
insert into emp values(106,'ggg',null,67789.99),(107,'hhh',null,45555.55);

select e.emp_id,e.emp_name,d.deptname,e.salart from emp e inner join department d on e.deptid = d.deptid order by salart desc;

-- scenario 2
/* An online shopping company wants to identify customers who have registered on the website but have not placed any orders. 
Display the Customer ID, Customer Name, City, and Order ID. Arrange the result in ascending order of Customer Name.*/

select * from customer1;
create table orders (order_id int,customer_id int,order_date date,amount decimal(10,2)); 
insert into orders values(101,2,'2026-07-07',40000.00),
(102,1,'2026-04-06',50000.00),(null,3,null,null),(null,4,null,null),(103,5,'2026-06-06',56000.00);
select * from orders;
select c.cust_id,c.cust_name,c.city,o.order_id from customer1 c left join orders o on c.cust_id = o.customer_id 
where o.order_id is null order by c.cust_name asc;

-- scenario 3
/* The management wants to identify departments that currently have no employees assigned. 
Display the Department ID, Department Name, Employee ID, and Employee Name. Sort the result by Department Name. */

select * from emp;
select d.deptid,d.deptname,e.emp_id,e.emp_name from department d left join emp e on d.deptid = e.deptid 
where e.deptid is null order by d.deptname;

-- scenario 4
/* An inventory management team wants to compare the Product Master table with the Warehouse Stock table. 
Generate a report containing: • Products available in both tables 
• Products available only in the Product Master
• Products available only in the Warehouse Stock Display the Product ID, Product Name, Warehouse Quantity. */

create table product_master ( product_id int , product_name varchar(25));
insert into product_master values(1,'laptop'),
(2,'computer'),(3,'mouse'),(4,'keyboard'),(5,'printer'),(6,'scanner');
create table warehouse_stock (product_id int,quantity int);
insert into warehouse_stock values(1,10),
(2,17),(7,16),(4,21),(8,28),(6,22);

select p.product_id,p.product_name,w.quantity from product_master p inner join warehouse_stock w on p.product_id = w.product_id
order by product_id;
select p.product_id,p.product_name,w.quantity from product_master p left join warehouse_stock w on p.product_id = w.product_id 
where w.product_id is null order by product_id;
select w.product_id,p.product_name,w.quantity from product_master p right join warehouse_stock w on p.product_id = w.product_id
where p.product_id is null order by product_id;

-- scenario 5
/*A company wants to generate an organization hierarchy report. 
Display each Employee Name along with their Reporting Manager Name. 
Include employees even if they do not have a manager. Sort the report alphabetically by Employee Name. */

CREATE TABLE Employee3
( 
Emp_ID INT, 
Emp_Name VARCHAR(30), 
Manager_ID INT 
); 
INSERT INTO Employee3 VALUES 
(101,'John',NULL), 
(102,'Alice',101), 
(103,'David',101), 
(104,'Ravi',102), 
(105,'Meena',103);

select e.emp_name as employee,m.emp_name as manager from employee3 e
left join employee3 m on e.manager_id = m.emp_id order by e.emp_name asc;