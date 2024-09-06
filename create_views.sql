CREATE VIEW ItemDetails AS
SELECT 
    i.ItemID,
    i.Name AS ItemName,
    i.Description,
    i.SKU,
    i.Price,
    s.Name AS SupplierName,
    pc.Name AS CategoryName
FROM 
    Item i
JOIN 
    Supplier s ON i.SupplierID = s.SupplierID
JOIN 
    ProductCategory pc ON i.CategoryID = pc.CategoryID;

CREATE VIEW StockStatus AS
SELECT 
    i.ItemID,
    i.Name AS ItemName,
    s.Quantity
FROM 
    Item i
LEFT JOIN 
    Stock s ON i.ItemID = s.ItemID;