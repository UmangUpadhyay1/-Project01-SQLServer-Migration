SELECT 'Customers' AS TableName, COUNT(*) AS RowCount
FROM Customers

UNION ALL

SELECT 'Products', COUNT(*)
FROM Products

UNION ALL

SELECT 'Orders', COUNT(*)
FROM Orders

UNION ALL

SELECT 'OrderItems', COUNT(*)
FROM OrderItems;
