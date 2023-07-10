USE BankDB

SELECT EMPLOYEE.EmployeeName,EMPLOYEE.EmployeeID,BANK.Name
FROM BANK
INNER  JOIN EMPLOYEE ON
Employee.EmployeeName = BANK.EmployeeName;