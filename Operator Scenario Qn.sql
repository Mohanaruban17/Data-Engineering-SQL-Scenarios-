use de_scenario_qn;
-- scenario 1
/* A company is planning to provide a fixed salary increment of ₹5,000 to every employee. 
The HR department wants to generate a report showing both the current salary and the revised salary after the increment.*/
select empname, salary , salary + 5000 as new_salary from employee;

-- scenario 2
/*The HR department wants to identify employees who belong to the Sales department and whose salary is greater than ₹45,000. 
Generate a report containing only employees who satisfy both conditions. */
select * from employee;
select empid,empname from employee where department = 'Sales' and salary >= 45000;

-- scenario 3
/* The management wants to retrieve employees who are working in either the HR department or the IT department. */
select empid,empname,department from employee where department in('Hr','it');

-- scenario 4
/* The recruitment team wants to identify employees whose names start with the letter 'A' and 
employees whose names end with the letter 'n'. */
select * from employee where empname like 'a%' or empname like '%n';

-- scenario 5
/* A company has migrated employee records from another system. During migration, some employees were assigned a department, while others were left without one. 
Generate the following reports: 
• Employees whose department information is missing. 
• Employees whose department information is available. */
select * from employee where department is null; 
select * from employee where department is not null;