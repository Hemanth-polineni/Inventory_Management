CREATE TRIGGER UpdateStockAfterPurchaseOrder
AFTER INSERT ON PurchaseOrderItem
FOR EACH ROW
BEGIN
    UPDATE Stock 
    SET Quantity = Quantity + NEW.Quantity
    WHERE ItemID = NEW.ItemID;
END;

CREATE TRIGGER UpdateStockAfterSalesOrder
AFTER INSERT ON SalesOrderItem
FOR EACH ROW
BEGIN
    UPDATE Stock 
    SET Quantity = Quantity - NEW.Quantity
    WHERE ItemID = NEW.ItemID;
    
    -- Optionally, check for negative stock
    IF (SELECT Quantity FROM Stock WHERE ItemID = NEW.ItemID) < 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Insufficient stock for ItemID';
    END IF;
END;