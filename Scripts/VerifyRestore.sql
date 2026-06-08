USE ERPDB_migrated;

SELECT 'Customers' TableName, COUNT(*) as 'RowCount' FROM Customers
UNION ALL
SELECT 'Products', COUNT(*) FROM Products
UNION ALL
SELECT 'Orders', COUNT(*) FROM Orders
UNION ALL
SELECT 'OrderItems', COUNT(*) FROM OrderItems;
---------------------------------------------------------------------------------------------------------------------
-- To confirm the row that was added after full backup
USE ERPDB_migrated;
GO

SELECT *
FROM Customers
WHERE CustomerName = 'Migration_Test_User';
---------------------------------------------------------------------------------------------------------------------
DBCC CHECKDB ('ERPDB_migrated')
WITH NO_INFOMSGS;
GO
