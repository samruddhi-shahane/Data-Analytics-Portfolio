-------------------------------------------------------
-- SQL Employee Attrition Analysis
-------------------------------------------------------

-- Query 1: Total Employees
select 
count(*) as Total_Employees
from emp_attrition

-------------------------------------------------------

-- Query 2: Total Attrition
select count(attrition) from emp_attrition
where attrition = 'Yes'

-------------------------------------------------------

-- Query 3: Department-wise Attrition
select department, 
count(*) as Attrition_Count from emp_attrition
where attrition = 'Yes'
group by department
order by Attrition_Count

------------------------------------------------------

-- Query 4: Job Role-wise Attrition
select jobrole, count(*) as Employee_Attrition_Count 
from emp_attrition 
where attrition = 'Yes'
group by jobrole
ORDER by Employee_Attrition_Count DESC;

------------------------------------------------------

-- Query 5: Gender-wise Attrition
select gender, count(*) as Attrition_Count from emp_attrition 
where attrition = 'Yes'
group by gender
order by Attrition_Count desc

------------------------------------------------------

-- Query 6: Age Group Analysis
select case WHEN age>50 then 'Above 50'
when age>40 then '41 to 50'
when age>30 then '31 to 40'
when age>20 then '21 to 30'
else 'Below 20'
END as Age_Group,
Count(*) as Employee_Count
from emp_attrition
group by Age_Group
order by Employee_Count desc

-------------------------------------------------------

-- Query 7: Average Monthly Income by Department
SELECT department, 
Avg(monthlyincome) as Avg_Monthly_Income 
from emp_attrition
group by department
order by Avg_Monthly_Income desc

-------------------------------------------------------

-- Query 8: Employees With More Than 10 Years of Experience
SELECT * 
FROM emp_attrition
WHERE yearsatcompany>10
order by yearsatcompany ASC

-------------------------------------------------------

-- Query 9: Highest Paid Employees
SELECT * 
FROM emp_attrition
order by monthlyincome DESC
limit 10

-------------------------------------------------------

-- Query 10: Top Departments by Average Salary
SELECT department, '₹' || round(Avg(monthlyincome), 5) as Avg_Salary from emp_attrition
group by department
order by Avg_Salary desc

--------------------------------------------------------

-- Query 11: Employees Eligible for Promotion
Select * from emp_attrition
where yearsatcompany>4 and hourlyrate>50 
and performanceratin>=4 and yearssincelastpr>=3

--------------------------------------------------------

-- Query 12:Department-wise Employee Count
select department, Count(*) as EmployeeCount from emp_attrition
group by department
order by EmployeeCount desc

--------------------------------------------------------

