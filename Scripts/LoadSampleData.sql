INSERT INTO Customers
(
    CustomerName,
    Email,
    City
)
SELECT TOP (1000)
    CONCAT('Customer_',ROW_NUMBER() OVER(ORDER BY (SELECT NULL))),
    CONCAT('customer',ROW_NUMBER() OVER(ORDER BY (SELECT NULL)),'@gmail.com'),
    CONCAT('City_',ABS(CHECKSUM(NEWID())) % 20)
FROM sys.objects a
CROSS JOIN sys.objects b;

---------------------------------------------------------------------------------------------------------------------------
INSERT INTO Products
(
    ProductName,
    Price
)
SELECT TOP (500)
    CONCAT('Product_',ROW_NUMBER() OVER(ORDER BY (SELECT NULL))),
    CAST((RAND(CHECKSUM(NEWID())) * 1000) AS DECIMAL(10,2))
FROM sys.objects;

---------------------------------------------------------------------------------------------------------------------------
DECLARE @i INT = 1;

WHILE @i <= 5000
BEGIN

    INSERT INTO Orders(CustomerID)
    VALUES
    (
        ABS(CHECKSUM(NEWID())) % 1000 + 1
    );

    SET @i += 1;

END
----------------------------------------------------------------------------------------------------------------------------
DECLARE @i INT = 1;

WHILE @i <= 20000
BEGIN

    INSERT INTO OrderItems
    (
        OrderID,
        ProductID,
        Quantity
    )
    VALUES
    (
        ABS(CHECKSUM(NEWID())) % 5000 + 1,
        ABS(CHECKSUM(NEWID())) % 500 + 1,
        ABS(CHECKSUM(NEWID())) % 10 + 1
    );

    SET @i += 1;

END
