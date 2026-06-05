USE ERPDB;
GO

CREATE TABLE Customers
(
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    Email VARCHAR(150),
    City VARCHAR(100),
    CreatedDate DATETIME DEFAULT GETDATE()
);
GO

CREATE TABLE Products
(
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    CreatedDate DATETIME DEFAULT GETDATE()
);
GO

CREATE TABLE Orders
(
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATETIME DEFAULT GETDATE(),

    CONSTRAINT FK_Orders_Customers
    FOREIGN KEY(CustomerID)
    REFERENCES Customers(CustomerID)
);
GO

CREATE TABLE OrderItems
(
    OrderItemID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL,

    CONSTRAINT FK_OrderItems_Orders
    FOREIGN KEY(OrderID)
    REFERENCES Orders(OrderID),

    CONSTRAINT FK_OrderItems_Products
    FOREIGN KEY(ProductID)
    REFERENCES Products(ProductID)
);
GO
