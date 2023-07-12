USE BankDB
GO

CREATE PROCEDURE EnterBankCode(@bankcode varchar(30))
AS
SELECT CUSTOMER.CustomerName, CUSTOMER.CustomerID, ACCOUNT.Balance, ACCOUNT.Date
FROM CUSTOMER
Inner Join ACCOUNT on
CUSTOMER.AccountNR = ACCOUNT.AccountNR
WHERE BankCode= @bankcode
ORDER BY CUSTOMER.CustomerID;

