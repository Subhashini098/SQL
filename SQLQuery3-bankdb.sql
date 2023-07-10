USE BankDB

SELECT * FROM TRANSACTIONS
WHERE TransactionID IN( SELECT TransactionID FROM 
                        TRANSACTIONS
						WHERE AMOUNT > = '5000');
