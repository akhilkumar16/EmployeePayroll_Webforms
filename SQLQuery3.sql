create procedure sp_Register(
@FirstName varchar(100),
@LastName varchar(100),
@Email varchar(50),
@Password varchar(50)
)
As 
Begin try
insert into usertable(FirstName,LastName,Email,Password)values(@FirstName, @LastName, @Email, @Password)
end try
Begin catch
SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;
END CATCH  
select*from usertable
alter procedure sp_Login(
@Email varchar(50),
@password varchar(50)
)
as
declare @userCount int
select @usercount = count(EmpId) from usertable where Email = @Email
if (@userCount <>1)
begin
Raiserror('user not registered',16,1)
end
else
begin
select @userCount = count(EmpId)from usertable where Email=@Email and password=@password
if (@userCount <>1)
begin
Raiserror('password is incorrect',16,1)
end
else
begin
select * from EmployeeForm ;
end
end
create table employee_webform(
EmpId int not null identity(1,1) primary key,
Emp_name varchar(50),
salary double precision not null,
start date not null,
gender char (1),
EmployeePhone varchar(20) not null default 'not present',
EmployeeAddress varchar(100) default 'not provided',
EmployeeDepartment varchar(100) not null default 'not provided',
BasicPay float,
Deductions float,
TaxablePay float,
IncomeTax float,
NetPay float
)
select*from employee_webform
create procedure AddPayRoleServices
(
	@Emp_name varchar(100),
	@salary double precision,
	@start date,
	@gender varchar(1),
	@EmployeePhone varchar(20),
	@EmployeeAddress varchar(100),
	@EmployeeDepartment varchar(50),
	@BasicPay float,
	@Deductions float,
	@TaxablePay float,
	@IncomeTax float,
	@NetPay float
)
as 
begin try
insert into employee_webform values(@Emp_name,@salary,@start,@BasicPay,@Deductions,@TaxablePay,@IncomeTax,@NetPay,@gender,@EmployeePhone,@EmployeeAddress,@EmployeeDepartment)

end try
begin catch
select
ERROR_NUMBER() as ErrorNumber,
ERROR_STATE() as ErrorState,
ERROR_PROCEDURE() as ErrorProcedure,
ERROR_LINE() as ErrorLine,
ERROR_MESSAGE() as ErrorMessage;
end catch
create procedure DeletePayRoleService
(
	@EmpId int
)
as 
begin try
delete from employee_webform where EmpId = @EmpId 
end try
begin catch
select
ERROR_NUMBER() as ErrorNumber,
ERROR_STATE() as ErrorState,
ERROR_PROCEDURE() as ErrorProcedure,
ERROR_LINE() as ErrorLine,
ERROR_MESSAGE() as ErrorMessage;
end catch
select * from employee_webform 
select*from usertable
exec sp_Login 'sachin@gmail.com','Reset@123'
create procedure GetPayRoleService
as 
begin try
select * from employee_webform  
end try
begin catch
select
ERROR_NUMBER() as ErrorNumber,
ERROR_STATE() as ErrorState,
ERROR_PROCEDURE() as ErrorProcedure,
ERROR_LINE() as ErrorLine,
ERROR_MESSAGE() as ErrorMessage;
end catch
create procedure UpdatePayRoleService
(
	@Emp_name varchar(100),
	@BasicPay float
)
as 
begin try
update employee_webform set BasicPay=@BasicPay where @Emp_name =@Emp_name 
end try
begin catch
select
ERROR_NUMBER() as ErrorNumber,
ERROR_STATE() as ErrorState,
ERROR_PROCEDURE() as ErrorProcedure,
ERROR_LINE() as ErrorLine,
ERROR_MESSAGE() as ErrorMessage;
end catch
insert into employee_webform values ('virat','150000','2022-04-19','M','2525252525','abc','Sports','80000','1500','2500','1500','180000')
create table EmployeeForm(
Name varchar(50),
profileimage varchar(250),
gender varchar(1),
department varchar(50),
salary float,
Notes varchar(250),
)
select*from EmployeeForm
create procedure sp_Addemployee(
    @Name varchar(100),
    @profileimage varchar(250),
	@gender varchar(1),
	@department varchar(50),
	@salary float,
	@Notes varchar(250)
)
as 
begin try
insert into EmployeeForm values(@Name,@profileimage,@gender,@department,@salary,@Notes)
insert into EmployeeForm values('test','string','M','Hr','500000','test')

end try
begin catch
select
ERROR_NUMBER() as ErrorNumber,
ERROR_STATE() as ErrorState,
ERROR_PROCEDURE() as ErrorProcedure,
ERROR_LINE() as ErrorLine,
ERROR_MESSAGE() as ErrorMessage;
end catch
create procedure sp_update
(
	@Name varchar(100),
	@Profileimage varchar(100),
	@gender varchar(1),
	@department varchar(100),
	@salary float,
	@Notes varchar(100)
)
as 
begin try
update EmployeeForm set Name=@Name,profileimage=@Profileimage,gender=@gender,department=@department,salary=@salary,Notes=@Notes where Name=@Name;
end try
begin catch
select
ERROR_NUMBER() as ErrorNumber,
ERROR_STATE() as ErrorState,
ERROR_PROCEDURE() as ErrorProcedure,
ERROR_LINE() as ErrorLine,
ERROR_MESSAGE() as ErrorMessage;
end catch
insert into EmployeeForm values('Srh','image','M','Hr','500000','orangearmy')
exec sp_update
DELETE FROM EmployeeForm WHERE Name='Srh';
