create database payroll_service1

use payroll_service1

-- UC2
create table employee_payroll(
Id int primary key identity,
name varchar(50),
phone varchar(15),
address varchar(100),
department varchar(20),
gender varchar(1),
basic_pay money,
deduction money,
taxable_pay money,
tax money,
netpay money,
startDate date
);


