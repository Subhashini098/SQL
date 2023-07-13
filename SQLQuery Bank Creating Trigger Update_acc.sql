USE BankDB
GO

Create Trigger Update_acc
on ACCOUNT
After Insert,Update
As
Update ACCOUNT 
Set Balance+=2000
where AccountNR in (select AccountNR from Inserted);