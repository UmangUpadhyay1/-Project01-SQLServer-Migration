CREATE INDEX IX_Orders_CustomerID
ON Orders(CustomerID);

CREATE INDEX IX_OrderItems_OrderID
ON OrderItems(OrderID);

CREATE INDEX IX_OrderItems_ProductID
ON OrderItems(ProductID);
