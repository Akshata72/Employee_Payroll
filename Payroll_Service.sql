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

--UC4-Ability_ToRetrive_AllThe_Employee_Payroll			
select * from Employee_Payroll;

--UC5-Ability to retrieve salary data for a particular employee as well as all employees who have joined in a particular data range.
select Salary from Employee_Payroll where First_Name = 'Vishal';

select Salary from Employee_payroll where StartDate between CAST('2020-04-19' as date) and GETDATE();
