use de_scenario_qn;
-- scenario 1
/* A training institute wants to generate a student result report.
 Students who score 50 or above should be displayed as "Pass", and students scoring below 50 should be displayed as "Fail". */
 
 select studentname,mark,if(mark>=50,'pass','fail') as result from student2 ;
 
 -- scenario 2
 /* The HR department wants to identify employees eligible for a yearly bonus. 
 Employees with a salary of ₹60,000 or more should be displayed as "Bonus Eligible"; all others should be displayed as "Not Eligible". */
 
 select empname,salary,if(salary>=50000,'bonus eligible','not eligible') as bonus_list from employee;
 
 -- scenario 3
 /* An online shopping company wants to classify customers based on their total purchase amount. 
 Customers meeting the company's purchase criteria should be displayed as "Premium Customer", otherwise display "Regular Customer". */
 
 create table customer1 (cust_id int , cust_name varchar(25) , city varchar(25) , purchase_amount int);
 insert into customer1 values(1,'aaa','zz',50000),
 (2,'bbb','yy',45000), (3,'ccc','xx',20000),(4,'ddd','ww',40000),(5,'eee','vv',48000);
 select * from customer1;
 select cust_name,purchase_amount,if(purchase_amount>=45000,'Premium Customer','Regular Customer') as Customer_Category from customer1;
 
 -- scenario 4
 /* An inventory management system wants to display the stock status of every product. 
 Products satisfying the company's stock condition should display "In Stock", otherwise display "Out of Stock". */
 
 create table product1 (prod_id int , prod_name varchar(25) , category varchar(25) , stock_quantity int);
 insert into product1 values(1,'aaa','zz',8),
 (2,'bbb','yy',5), (3,'ccc','xx',2),(4,'ddd','zz',7),(5,'eee','yy',4);
 select * from product1;
 select prod_name,category,stock_quantity,if(stock_quantity>=5,'In Stock','Out of Stock') as availability from product1;
 
 -- scenario 5
 /* The HR department wants to classify employee performance into multiple levels based on their performance score. 
 Generate the report according to the company's performance policy.*/
 
 create table emp_performance (emp_id int , emp_name varchar(25) , department varchar(25) , performace_score int);
 INSERT INTO emp_performance (Emp_ID, Emp_Name, Department, performace_score)
VALUES
(101, 'John','Sales', 75),
(102, 'Alice','HR', 90),
(103, 'David','Finance', 85),
(104, 'Ravi', 'IT', 42),
(105, 'Meena','Sales', 55),
(106, 'Karthik','HR', 60);
select emp_name,department,performace_score,
case when performace_score >=85 then 'Exceptional'
when performace_score >=75 then'good'
when performace_score >=55 then 'meet the exceptation'
else 'below exceptation' end as performance from emp_performance;

 -- scenario 6
 /* A university wants to classify students into different scholarship categories based on their semester marks. 
 Generate the scholarship report according to the university's scholarship rules. */
 
 select *,
 case when mark >=85 then 'gold scholarship'
when mark >=75 then 'silver scholarship'
when mark >=55 then 'bronze scholarship'
else 'no scholarship' end as category from student2;

-- scenario 7
/* A bank wants to classify loan applications into different approval categories based on the applicant's monthly income. 
Generate the loan approval report according to the bank's business policy. */

create table loan_application (app_id int , customer_name varchar(25) , monthly_income decimal(10,2) , loan_amount decimal(10,2));
INSERT INTO loan_application (app_id, customer_name, monthly_income ,loan_amount )
VALUES
(101, 'John',35000.45, 25000.77),
(102, 'Alice',90000.67,96000.66),
(103, 'David',85000.66,80000.00),
(104, 'Ravi',  42000.78,45000.00),
(105, 'Meena', 55679.89,55000.00),
(106, 'Karthik', 60000.78,45000.00);
select * ,
case when monthly_income > loan_amount then 'Loan Approved'
else 'Not Approved' end as approval_categories from loan_application;

-- scenario 8
/* An e-commerce company wants to classify products into different discount categories based on their selling price. 
Generate the discount category report according to the company's pricing policy */

select * from product2;
select productname,price,
case when price > 50000 then '50% discount'
when price > 10000 then '20% discount'
else '5% discount' end as discount_category from product2;

-- scenario 9
/* A hospital wants to categorize patients based on their health score into different treatment priority levels. 
Generate the patient priority report according to the hospital's treatment policy. */
create table patient_details (pat_id int , pat_name varchar(25) , age int , health_score int);
INSERT INTO patient_details VALUES
(101, 'John',34,78),
(102, 'Alice',56,63),
(103, 'David',23,90),
(104, 'Ravi',45,92),
(105, 'Meena',30,59),
(106, 'Karthik',38,86 );
select *,
case when health_score > 85 then 'very less priority'
when health_score > 65 then 'less priority'
else 'more priority' end as priority from patient_details;

-- scenario 10
/* The Finance department wants to classify employees into different salary bands based on their monthly salary. 
Generate the salary band report according to the company's salary classification policy. */

select * from employee;
select *, 
case when salary > 50000 then 'higher band' 
when salary > 35000 then 'medium band'
else 'low band' end as salary_classification from employee;