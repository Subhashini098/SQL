USE BankDB
GO

Create trigger CheckBalance 
on ACCOUNT
After Update 
AS
BEGIN
Update ACCOUNT set Balance='Too Low' WHERE AccountNR in
( Select AccountNR FROM INSERTED WHERE INSERTED.Balance < '100')
Update ACCOUNT set Balance='Too Low' WHERE AccountNR in
( Select AccountNR FROM INSERTED WHERE INSERTED.Balance >'10000')
END;

                                                       