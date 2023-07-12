USE BankDB
GO

CREATE PROCEDURE GetBankName(@bankname varchar(30))
AS
SELECT EMPLOYEE.EmployeeName,EMPLOYEE.EmployeeID,BANK.BankCode
FROM BANK
INNER  JOIN EMPLOYEE ON
Employee.EmployeeName = BANK.EmployeeName
Where BANK.Name= @bankname
Order by EMPLOYEE.EmployeeID;