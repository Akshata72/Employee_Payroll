--UC1-Create_Payroll_Service_Database.
Create database payroll_service;
go
use payroll_service
go

--UC2-Create_Employee_Payroll_Table.
create Table Employee_Payroll(
ID INT identity(1,1) not null Primary key,
First_Name varchar(50),
Last_Name varchar(50),
Salary bigint,
StartDate Datetime
);

--UC3-Insert_Data_into_Employee_Payroll_Table.
insert into Employee_Payroll(First_Name,Last_Name,Salary,StartDate) values 
            ('Akshata','Panchal',15000,'2020-04-19'),
			('Aditya','Shinde',18000,'2021-04-19'),
			('Vishal','Gangane',20000,'2019-04-19'),
			('Vaishnavi','Sabale',17000,'2021-05-19'),
			('Supriya','Kadam',22000,'2021-08-19');

--UC4-Ability_ToRetrive_AllThe_Employee_Payroll.		
select * from Employee_Payroll;

--UC5-Ability to retrieve salary data for a particular employee as well as all employees who have joined in a particular data range.
select Salary from Employee_Payroll where First_Name = 'Vishal';

select Salary from Employee_payroll where StartDate between CAST('2020-04-19' as date) and GETDATE();


--UC6-Ability to add Gender to Employee Payroll Table.
alter table Employee_Payroll add Gender varchar(1);
UPDATE Employee_Payroll set Gender ='F';
UPDATE Employee_Payroll set Gender ='M' where First_Name = 'Aditya' or First_Name ='Vishal';

--UC7-Ability to find sum, average, min, max and number of male and female employees.
Select SUM(Salary) As Sum_Of_Salary_ForFemale, AVG(Salary)As Avrage_Of_Female_Salary,MIN(Salary)As Minimum_Salary_From_Female,MAX(Salary)As Maximum_Salary,COUNT(Gender)As No_Of_Females from Employee_Payroll where Gender = 'F' GROUP BY Gender;

Select SUM(Salary) As Sum_Of_Salary_ForMale, AVG(Salary)As Avrage_Of_Male_Salary,MIN(Salary)As Minimum_Salary_From_Male,MAX(Salary)As Maximum_Salary,COUNT(Gender)As No_Of_Males from Employee_Payroll where Gender = 'M' GROUP BY Gender;