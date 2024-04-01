use agozie;
show columns from agozie;

## Question 1.
## Write a SQL query to retrieve all columns for all records from the table.
show columns from employee_salary_dataset; ## Right Answer
select * from employee_salary_dataset;

## Question 2. 
##Write a SQL query to retrieve the ID and Salary columns for all records where Experience_Years is greater than 5.
select ID,Salary from employee_salary_dataset where Experience_Years > 5;## the Right Answer
select ID,Experience_Years,Salary from employee_salary_dataset where Experience_Years > 5; ## this is Right but with addition of Experience_Years column

## Question 3.
## Write a SQL query to calculate the average Age for all records in the table.
select Age, avg(Age) as result from employee_salary_dataset group by Age; # this is wrong
select avg(Age) from employee_salary_dataset; # this is right

## Question 4.
# Write a SQL query to retrieve the records sorted by Salary in descending order
select * from employee_salary_dataset order by Salary desc;

## Question 5.
## Write a SQL query to count the number of records where Gender is 'Male'.
 select count(*) from employee_salary_dataset where Gender='Male';
 select * from employee_salary_dataset where Gender='Male';
 
# Question 6.
# Write a SQL query to calculate the total Salary for all records where Age is between 25 and 35 (inclusive).
select sum(Salary) as Summation_Of_Salaries_From_Age_25_to_35 from employee_salary_dataset where Age >= 25 and Age <=35;## Right Anwser
select Salary, sum(Salary) as result from employee_salary_dataset where Age >= 25 and Age <=35 group by Salary;## wrong

## Question 7.
## Write a SQL query to retrieve the ID, Age, and Salary columns for the five youngest employees.
select ID,Age,Salary from employee_salary_dataset where Age=21;## Right Anwser
select ID,Age, Salary, min(Age) as result from employee_salary_dataset group by ID,Age, Salary;## wrong

## Question 8.
##Write a SQL query to calculate the maximum Experience_Years among all records.
select max(Experience_Years) from employee_salary_dataset; ## this is Right
select Experience_Years, max(Experience_Years) as result from employee_salary_dataset group by Experience_Years;

## Question 9.
## Write a SQL query to retrieve the ID and Gender columns for all records where Salary is greater than 50000 and Experience_Years is less than 3.
select ID,Gender from employee_salary_dataset where Salary>50000 and Experience_Years<3;

## Question 10.
## Write a SQL query to calculate the average Salary for each Gender group.
select Gender, avg(Salary) from employee_salary_dataset where Gender='Male';
select Gender, avg(Salary) from employee_salary_dataset where Gender='Female';
select avg(Salary) as result from employee_salary_dataset group by Gender;