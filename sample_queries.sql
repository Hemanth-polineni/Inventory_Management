-- Query to get all item details along with their supplier and category
SELECT * FROM ItemDetails;

-- Query to get current stock status
SELECT * FROM StockStatus;

-- Query to add a new item
CALL AddNewItem('Laptop', '15-inch gaming laptop', 'LAP123', 1200.50, 1, 2);

-- Query to update stock
CALL UpdateStock(1, 50);

-- Query to get all purchase orders
SELECT * FROM PurchaseOrder;

-- Query to get all sales orders
SELECT * FROM SalesOrder;
