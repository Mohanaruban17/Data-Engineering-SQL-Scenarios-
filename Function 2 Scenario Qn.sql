use de_scenario_qn;
-- scenario 1
/* A company's HR department wants to know the total salary expense paid to all employees every month. 
Write a SQL query to generate the required report. */ 
select sum(salary) as total_salary from employee;
select * from employee;

-- scenario 2
/* A training institute wants to calculate the average marks scored by all students in the SQL course. 
Write a SQL query to display the average marks.*/
select * from student2;
select avg(mark) as average_mark from student2 where course = 'SQL';

-- scenario 3
/* An e-commerce company wants to identify the most expensive product and the least expensive product available in its inventory. 
Write a SQL query to generate the report. */
select * from product2;
select max(price) as most_expensive_product , min(price) as least_expensive_product from product2 ;

-- scenario 4
/* A banking application needs to know how many customers have registered in the system. 
Write a SQL query to display the total number of customer records. */
select * from customer;
select count(customerid) as registered_customer from customer;

-- scenario 5
/* The management team wants a salary summary dashboard that displays the following information: 
• Total number of employees • Total salary paid • Average salary • Highest salary • Lowest salary 
Write a single SQL query to generate the dashboard. */
select * from employee;
select count(empid) as total_number_employee , sum(salary) as total_salary , avg(salary) as avg_salary , max(salary) as high_salary ,
min(salary) as low_salary from employee;