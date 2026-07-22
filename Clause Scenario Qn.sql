use de_scenario_qn;
-- scenario 1
/* The HR department wants to identify departments where the average employee salary is greater than the company's salary benchmark is ₹60,000. 
Display the Department and its Average Salary. Sort the result by Average Salary in descending order and display only the top 3 departments.*/

select * from employee;
select department , avg(salary) as avg_salary from employee group by department 
having avg(salary) > 40000 order by avg_salary desc 
limit 3;

-- scenario 2
/* An e-commerce company wants to identify the top-selling products. 
Display each Product Category along with the total quantity sold. 
Only display categories that have sold more than the company's minimum sales requirement 100 units. 
Sort the result from highest to lowest quantity sold and display only the top 5 categories. */

select * from product1;
select category,sum(stock_quantity) as total_quantity from product1 group by category
having sum(stock_quantity) > 10 order by total_quantity desc
limit 2;

-- scenario 3
/* A retail company wants to prepare a customer purchase report. 
Display only customers whose purchase amount satisfies the company's Purchase_Amount ≥ ₹25,000. 
Remove duplicate city names in the report and display the customers in ascending alphabetical order. */

select * from customer1;
select distinct(city) from customer1 where purchase_amount >=25000 order by city;

-- scenario 4
/* A hospital wants to analyze the number of patients treated in each department. 
Display the Department Name and Total Patients. Show only those departments that have treated more than the hospital's required More than 3 patients. 
Sort the result based on the total number of patients in descending order. */
create table patient2 (
pat_id int,
pat_name varchar(25),
department varchar(30),
treatment_cost decimal(10,2));
insert into patient2 values(1,'aaa','cardio',45000.99),
(2,'bbb','neuro',78000.45),(3,'ccc','ortho',60000.55),(4,'ddd','cardio',60000.88),(5,'eee','neuro',89000);
select * from patient2;
select department , count(*) as total_patient from patient2 group by department 
having count(*) >= 2 order by total_patient desc;

-- scenario 5
/* A company wants to prepare a report of employees who satisfy both the company's age criteria and salary criteria Age ≥ 30 and Salary ≥ ₹60,000. 
Display the employee details, arrange the report by Salary in descending order, and return only the top 5 employees. */
CREATE TABLE Employee2
(
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(30),
    Salary DECIMAL(10,2),
    Age INT
);

INSERT INTO Employee2 (Emp_ID, Emp_Name, Department, Salary, Age)
VALUES
(101, 'John','Sales',45000.00, 25),
(102, 'Alice','HR',55000.00, 30),
(103, 'David','Finance',60000.00, 35),
(104, 'Ravi', 'IT',50000.00, 28),
(105, 'Meena','Sales',40000.00, 24),
(106, 'Karthik','HR',65000.00, 32);
select * from employee2 where age >= 30 and salary >=50000 order by salary desc limit 3;