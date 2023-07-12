USE BankDB
GO

Create Procedure selectallcustomers
@name varchar(30)
as
Select * from CUSTOMER 
where CustomerName = @name;
