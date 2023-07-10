USE BankDB

SELECT TransactionID,Amount
FROM TRANSACTIONS
WHERE Type = 'SAVINGS'
ORDER BY TransactionID;
