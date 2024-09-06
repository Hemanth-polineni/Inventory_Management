# Inventory_Management
# Inventory Management Database

This repository contains SQL scripts for creating an Inventory Management Database system. The database schema includes tables, views, stored procedures, triggers, and sample queries for managing the inventory of items, purchase orders, sales orders, customers, suppliers, and employees.

## Project Structure

The following entities are covered:

1. **Item**: Stores details about products including name, SKU, price, supplier, and category.
2. **Supplier**: Contains information about suppliers such as name, address, and contact info.
3. **PurchaseOrder**: Represents purchase orders made with suppliers.
4. **SalesOrder**: Represents sales orders from customers.
5. **Customer**: Stores customer details.
6. **Stock**: Maintains the stock level of each item.
7. **ProductCategory**: Contains the product categories.
8. **Discount**: Tracks discounts applied to each item.
9. **Revenue**: Logs profit and loss data for revenue tracking.
10. **Employee**: Stores employee information.

### Files Included

- **create_tables.sql**: Contains SQL statements to create all tables.
- **create_views.sql**: Contains SQL statements to create views for querying data.
- **stored_procedures.sql**: Includes stored procedures for managing and interacting with the data.
- **triggers.sql**: Contains SQL triggers to automate updates to the stock after purchase or sales.
- **sample_queries.sql**: Example queries for interacting with the database.
  
### SQL Scripts Overview

#### 1. Create Tables (`create_tables.sql`)
This script defines the database tables for the system. It includes primary keys, foreign key relationships, and basic structure for the following tables:

- `Item`
- `Supplier`
- `PurchaseOrder`
- `PurchaseOrderItem`
- `SalesOrder`
- `SalesOrderItem`
- `Customer`
- `Stock`
- `ProductCategory`
- `Discount`
- `Revenue`
- `Employee`

#### 2. Create Views (`create_views.sql`)
This script contains SQL code to create the following views:
- **ItemDetails**: Joins `Item`, `Supplier`, and `ProductCategory` to show item details with supplier and category.
- **StockStatus**: Provides an overview of item stock levels.

#### 3. Stored Procedures (`stored_procedures.sql`)
This script contains the following stored procedures:
- `AddNewItem`: Adds a new item to the `Item` table.
- `UpdateStock`: Updates the quantity of an item in the `Stock` table.

#### 4. Triggers (`triggers.sql`)
This script includes triggers that automatically update stock levels:
- `UpdateStockAfterPurchaseOrder`: Increases stock when a purchase order is placed.
- `UpdateStockAfterSalesOrder`: Decreases stock when a sales order is placed. It also prevents negative stock values.

#### 5. Sample Queries (`sample_queries.sql`)
Contains example SQL queries to interact with the data:
- Select all item details along with supplier and category information.
- Get current stock status.
- Add a new item to the system.
- Update stock quantity for an item.
- Retrieve all purchase orders and sales orders.

### Installation

1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/your-username/inventory-management-database.git
   cd inventory-management-database
