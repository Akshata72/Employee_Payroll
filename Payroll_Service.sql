Create database payroll_service;
go
use payroll_service
go
create Table Employee_Payroll(
ID INT identity(1,1) not null Primary key,
First_Name varchar(50),
Last_Name varchar(50),
Salary bigint,
StartDate Datetime
);
select * from Employee_Payroll;