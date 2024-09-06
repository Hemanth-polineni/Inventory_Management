CREATE PROCEDURE AddNewItem(
    IN itemName VARCHAR(255),
    IN itemDescription VARCHAR(255),
    IN itemSKU VARCHAR(50),
    IN itemPrice DECIMAL(10, 2),
    IN supplierId INT,
    IN categoryId INT
)
BEGIN
    INSERT INTO Item (Name, Description, SKU, Price, SupplierID, CategoryID)
    VALUES (itemName, itemDescription, itemSKU, itemPrice, supplierId, categoryId);
END;

CREATE PROCEDURE UpdateStock(
    IN itemID INT,
    IN newQuantity INT
)
BEGIN
    UPDATE Stock 
    SET Quantity = newQuantity 
    WHERE ItemID = itemID;
END;