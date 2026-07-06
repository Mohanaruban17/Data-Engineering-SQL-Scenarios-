use ruban;
-- scenario 1
/* The HR department wants a complete employee directory containing every column for all
employees.
Expected Output : The result should display all five employee records along with EmpID, EmpName, Department,
Salary, and City. */

select empid,empname,department,salary,city from employee1;

-- scenario 2
/*The Finance Manager needs a report showing only employee names and their salaries.
Expected Output : The result should display five rows containing only the EmpName and Salary columns for all
employees.*/

select empname,salary from employee1;

-- scenario 3
/* The Administration team wants to know how many different departments exist in the company
without repeating department names.
Expected Output:The result should display only three department names: IT, HR, and Finance, with no duplicate
values.*/

select distinct(department) from employee1;

-- scenario 4
/* The company is planning new branch offices and wants a list of all unique cities where
employees are currently located.
Expected Output : The result should display four unique city names: Chennai, Bangalore, Hyderabad, and Madurai. */

select distinct(city) from employee1;

-- scenario 5
/* A dashboard should initially show only a small preview of employee records instead of loading
the entire table.
Expected Output:The result should display only the first three employee records from the Employee table as a
preview.*/

select * from employee1
limit 3;

