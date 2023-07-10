USE BankDB
GO

CREATE VIEW [Balance is thousand dollars]
AS
SELECT AccountNR,BankCode,Balance
FROM Account
WHERE Balance ='1000';
GO

SELECT * FROM [Balance is thousand dollars];