CREATE TABLE Supplier (
  SupplierID INT PRIMARY KEY,
  Name VARCHAR(255),
  Address VARCHAR(255),
  ContactInfo VARCHAR(255)
);

CREATE TABLE ProductCategory (
  CategoryID INT PRIMARY KEY,
  Name VARCHAR(255),
  ItemCount INT
);

CREATE TABLE Item (
  ItemID INT PRIMARY KEY,
  Name VARCHAR(255),
  Description VARCHAR(255),
  SKU VARCHAR(50),
  Price DECIMAL(10, 2),
  SupplierID INT,
  CategoryID INT,
  FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID),
  FOREIGN KEY (CategoryID) REFERENCES ProductCategory(CategoryID)
);

CREATE TABLE Customer (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(255),
  Address VARCHAR(255),
  ContactInfo VARCHAR(255)
);

CREATE TABLE PurchaseOrder (
  OrderID INT PRIMARY KEY,
  OrderDate DATE,
  SupplierID INT,
  Status VARCHAR(50),
  FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID)
);

CREATE TABLE PurchaseOrderItem (
  OrderItemID INT PRIMARY KEY,
  OrderID INT,
  ItemID INT,
  Quantity INT,
  UnitPrice DECIMAL(10, 2),
  FOREIGN KEY (OrderID) REFERENCES PurchaseOrder(OrderID),
  FOREIGN KEY (ItemID) REFERENCES Item(ItemID)
);

CREATE TABLE SalesOrder (
  OrderID INT PRIMARY KEY,
  OrderDate DATE,
  CustomerID INT,
  Status VARCHAR(50),
  FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE SalesOrderItem (
  OrderItemID INT PRIMARY KEY,
  OrderID INT,
  ItemID INT,
  Quantity INT,
  UnitPrice DECIMAL(10, 2),
  FOREIGN KEY (OrderID) REFERENCES SalesOrder(OrderID),
  FOREIGN KEY (ItemID) REFERENCES Item(ItemID)
);

CREATE TABLE Stock (
  ItemID INT PRIMARY KEY,
  Quantity INT,
  FOREIGN KEY (ItemID) REFERENCES Item(ItemID)
);

CREATE TABLE Discount (
  ItemID INT,
  Discount DECIMAL(5, 2),
  FOREIGN KEY (ItemID) REFERENCES Item(ItemID)
);

CREATE TABLE Revenue (
  Date DATE PRIMARY KEY,
  Profit DECIMAL(10, 2),
  Loss DECIMAL(10, 2)
);