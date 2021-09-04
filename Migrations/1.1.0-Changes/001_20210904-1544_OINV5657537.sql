-- <Migration ID="d8c34c25-2d28-4013-ba2d-fd13bf129842" />
GO

PRINT N'Dropping foreign keys from [dbo].[CustomerCustomerDemo]'
GO
IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CustomerCustomerDemo]','F') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerCustomerDemo]', 'U'))
ALTER TABLE [dbo].[CustomerCustomerDemo] DROP CONSTRAINT [FK_CustomerCustomerDemo]
GO
IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CustomerCustomerDemo_Customers]','F') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerCustomerDemo]', 'U'))
ALTER TABLE [dbo].[CustomerCustomerDemo] DROP CONSTRAINT [FK_CustomerCustomerDemo_Customers]
GO
PRINT N'Dropping foreign keys from [dbo].[EmployeeTerritories]'
GO
IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeTerritories_Employees]','F') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeTerritories]', 'U'))
ALTER TABLE [dbo].[EmployeeTerritories] DROP CONSTRAINT [FK_EmployeeTerritories_Employees]
GO
IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeTerritories_Territories]','F') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeTerritories]', 'U'))
ALTER TABLE [dbo].[EmployeeTerritories] DROP CONSTRAINT [FK_EmployeeTerritories_Territories]
GO
PRINT N'Dropping foreign keys from [dbo].[Employees]'
GO
IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employees_Employees]','F') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]', 'U'))
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_Employees]
GO
PRINT N'Dropping foreign keys from [dbo].[Order Details]'
GO
IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_Details_Orders]','F') AND parent_object_id = OBJECT_ID(N'[dbo].[Order Details]', 'U'))
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [FK_Order_Details_Orders]
GO
IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_Details_Products]','F') AND parent_object_id = OBJECT_ID(N'[dbo].[Order Details]', 'U'))
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [FK_Order_Details_Products]
GO
PRINT N'Dropping foreign keys from [dbo].[Orders]'
GO
IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_Customers]','F') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]', 'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Customers]
GO
IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_Employees]','F') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]', 'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Employees]
GO
IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Orders_Shippers]','F') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]', 'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_Orders_Shippers]
GO
PRINT N'Dropping foreign keys from [dbo].[Products]'
GO
IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Categories]','F') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]', 'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Categories]
GO
IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Products_Suppliers]','F') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]', 'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Products_Suppliers]
GO
PRINT N'Dropping foreign keys from [dbo].[Territories]'
GO
IF EXISTS (SELECT 1 FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Territories_Region]','F') AND parent_object_id = OBJECT_ID(N'[dbo].[Territories]', 'U'))
ALTER TABLE [dbo].[Territories] DROP CONSTRAINT [FK_Territories_Region]
GO
PRINT N'Dropping constraints from [dbo].[Employees]'
GO
IF EXISTS (SELECT 1 FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Birthdate]', 'C') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]', 'U'))
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [CK_Birthdate]
GO
PRINT N'Dropping constraints from [dbo].[Order Details]'
GO
IF EXISTS (SELECT 1 FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_UnitPrice]', 'C') AND parent_object_id = OBJECT_ID(N'[dbo].[Order Details]', 'U'))
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [CK_UnitPrice]
GO
PRINT N'Dropping constraints from [dbo].[Order Details]'
GO
IF EXISTS (SELECT 1 FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Quantity]', 'C') AND parent_object_id = OBJECT_ID(N'[dbo].[Order Details]', 'U'))
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [CK_Quantity]
GO
PRINT N'Dropping constraints from [dbo].[Order Details]'
GO
IF EXISTS (SELECT 1 FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Discount]', 'C') AND parent_object_id = OBJECT_ID(N'[dbo].[Order Details]', 'U'))
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [CK_Discount]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
IF EXISTS (SELECT 1 FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_Products_UnitPrice]', 'C') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]', 'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [CK_Products_UnitPrice]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
IF EXISTS (SELECT 1 FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_UnitsInStock]', 'C') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]', 'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [CK_UnitsInStock]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
IF EXISTS (SELECT 1 FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_UnitsOnOrder]', 'C') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]', 'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [CK_UnitsOnOrder]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
IF EXISTS (SELECT 1 FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_ReorderLevel]', 'C') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]', 'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [CK_ReorderLevel]
GO
PRINT N'Dropping constraints from [dbo].[Categories]'
GO
IF EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PK_Categories]', 'PK') AND parent_object_id = OBJECT_ID(N'[dbo].[Categories]', 'U'))
ALTER TABLE [dbo].[Categories] DROP CONSTRAINT [PK_Categories]
GO
PRINT N'Dropping constraints from [dbo].[CustomerCustomerDemo]'
GO
IF EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PK_CustomerCustomerDemo]', 'PK') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerCustomerDemo]', 'U'))
ALTER TABLE [dbo].[CustomerCustomerDemo] DROP CONSTRAINT [PK_CustomerCustomerDemo]
GO
PRINT N'Dropping constraints from [dbo].[CustomerDemographics]'
GO
IF EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PK_CustomerDemographics]', 'PK') AND parent_object_id = OBJECT_ID(N'[dbo].[CustomerDemographics]', 'U'))
ALTER TABLE [dbo].[CustomerDemographics] DROP CONSTRAINT [PK_CustomerDemographics]
GO
PRINT N'Dropping constraints from [dbo].[Customers]'
GO
IF EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PK_Customers]', 'PK') AND parent_object_id = OBJECT_ID(N'[dbo].[Customers]', 'U'))
ALTER TABLE [dbo].[Customers] DROP CONSTRAINT [PK_Customers]
GO
PRINT N'Dropping constraints from [dbo].[EmployeeTerritories]'
GO
IF EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PK_EmployeeTerritories]', 'PK') AND parent_object_id = OBJECT_ID(N'[dbo].[EmployeeTerritories]', 'U'))
ALTER TABLE [dbo].[EmployeeTerritories] DROP CONSTRAINT [PK_EmployeeTerritories]
GO
PRINT N'Dropping constraints from [dbo].[Employees]'
GO
IF EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PK_Employees]', 'PK') AND parent_object_id = OBJECT_ID(N'[dbo].[Employees]', 'U'))
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [PK_Employees]
GO
PRINT N'Dropping constraints from [dbo].[Order Details]'
GO
IF EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PK_Order_Details]', 'PK') AND parent_object_id = OBJECT_ID(N'[dbo].[Order Details]', 'U'))
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [PK_Order_Details]
GO
PRINT N'Dropping constraints from [dbo].[Orders]'
GO
IF EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PK_Orders]', 'PK') AND parent_object_id = OBJECT_ID(N'[dbo].[Orders]', 'U'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [PK_Orders]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
IF EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PK_Products]', 'PK') AND parent_object_id = OBJECT_ID(N'[dbo].[Products]', 'U'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [PK_Products]
GO
PRINT N'Dropping constraints from [dbo].[Region]'
GO
IF EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PK_Region]', 'PK') AND parent_object_id = OBJECT_ID(N'[dbo].[Region]', 'U'))
ALTER TABLE [dbo].[Region] DROP CONSTRAINT [PK_Region]
GO
PRINT N'Dropping constraints from [dbo].[Shippers]'
GO
IF EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PK_Shippers]', 'PK') AND parent_object_id = OBJECT_ID(N'[dbo].[Shippers]', 'U'))
ALTER TABLE [dbo].[Shippers] DROP CONSTRAINT [PK_Shippers]
GO
PRINT N'Dropping constraints from [dbo].[Suppliers]'
GO
IF EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PK_Suppliers]', 'PK') AND parent_object_id = OBJECT_ID(N'[dbo].[Suppliers]', 'U'))
ALTER TABLE [dbo].[Suppliers] DROP CONSTRAINT [PK_Suppliers]
GO
PRINT N'Dropping constraints from [dbo].[Territories]'
GO
IF EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PK_Territories]', 'PK') AND parent_object_id = OBJECT_ID(N'[dbo].[Territories]', 'U'))
ALTER TABLE [dbo].[Territories] DROP CONSTRAINT [PK_Territories]
GO
PRINT N'Dropping constraints from [dbo].[Order Details]'
GO
IF EXISTS (SELECT 1 FROM sys.columns WHERE name = N'UnitPrice' AND object_id = OBJECT_ID(N'[dbo].[Order Details]', 'U') AND default_object_id = OBJECT_ID(N'[dbo].[DF_Order_Details_UnitPrice]', 'D'))
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [DF_Order_Details_UnitPrice]
GO
PRINT N'Dropping constraints from [dbo].[Order Details]'
GO
IF EXISTS (SELECT 1 FROM sys.columns WHERE name = N'Quantity' AND object_id = OBJECT_ID(N'[dbo].[Order Details]', 'U') AND default_object_id = OBJECT_ID(N'[dbo].[DF_Order_Details_Quantity]', 'D'))
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [DF_Order_Details_Quantity]
GO
PRINT N'Dropping constraints from [dbo].[Order Details]'
GO
IF EXISTS (SELECT 1 FROM sys.columns WHERE name = N'Discount' AND object_id = OBJECT_ID(N'[dbo].[Order Details]', 'U') AND default_object_id = OBJECT_ID(N'[dbo].[DF_Order_Details_Discount]', 'D'))
ALTER TABLE [dbo].[Order Details] DROP CONSTRAINT [DF_Order_Details_Discount]
GO
PRINT N'Dropping constraints from [dbo].[Orders]'
GO
IF EXISTS (SELECT 1 FROM sys.columns WHERE name = N'Freight' AND object_id = OBJECT_ID(N'[dbo].[Orders]', 'U') AND default_object_id = OBJECT_ID(N'[dbo].[DF_Orders_Freight]', 'D'))
ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [DF_Orders_Freight]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
IF EXISTS (SELECT 1 FROM sys.columns WHERE name = N'UnitPrice' AND object_id = OBJECT_ID(N'[dbo].[Products]', 'U') AND default_object_id = OBJECT_ID(N'[dbo].[DF_Products_UnitPrice]', 'D'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF_Products_UnitPrice]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
IF EXISTS (SELECT 1 FROM sys.columns WHERE name = N'UnitsInStock' AND object_id = OBJECT_ID(N'[dbo].[Products]', 'U') AND default_object_id = OBJECT_ID(N'[dbo].[DF_Products_UnitsInStock]', 'D'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF_Products_UnitsInStock]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
IF EXISTS (SELECT 1 FROM sys.columns WHERE name = N'UnitsOnOrder' AND object_id = OBJECT_ID(N'[dbo].[Products]', 'U') AND default_object_id = OBJECT_ID(N'[dbo].[DF_Products_UnitsOnOrder]', 'D'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF_Products_UnitsOnOrder]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
IF EXISTS (SELECT 1 FROM sys.columns WHERE name = N'ReorderLevel' AND object_id = OBJECT_ID(N'[dbo].[Products]', 'U') AND default_object_id = OBJECT_ID(N'[dbo].[DF_Products_ReorderLevel]', 'D'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF_Products_ReorderLevel]
GO
PRINT N'Dropping constraints from [dbo].[Products]'
GO
IF EXISTS (SELECT 1 FROM sys.columns WHERE name = N'Discontinued' AND object_id = OBJECT_ID(N'[dbo].[Products]', 'U') AND default_object_id = OBJECT_ID(N'[dbo].[DF_Products_Discontinued]', 'D'))
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [DF_Products_Discontinued]
GO
PRINT N'Dropping index [CategoryName] from [dbo].[Categories]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'CategoryName' AND object_id = OBJECT_ID(N'[dbo].[Categories]'))
DROP INDEX [CategoryName] ON [dbo].[Categories]
GO
PRINT N'Dropping index [CompanyName] from [dbo].[Customers]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'CompanyName' AND object_id = OBJECT_ID(N'[dbo].[Customers]'))
DROP INDEX [CompanyName] ON [dbo].[Customers]
GO
PRINT N'Dropping index [City] from [dbo].[Customers]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'City' AND object_id = OBJECT_ID(N'[dbo].[Customers]'))
DROP INDEX [City] ON [dbo].[Customers]
GO
PRINT N'Dropping index [Region] from [dbo].[Customers]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'Region' AND object_id = OBJECT_ID(N'[dbo].[Customers]'))
DROP INDEX [Region] ON [dbo].[Customers]
GO
PRINT N'Dropping index [PostalCode] from [dbo].[Customers]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'PostalCode' AND object_id = OBJECT_ID(N'[dbo].[Customers]'))
DROP INDEX [PostalCode] ON [dbo].[Customers]
GO
PRINT N'Dropping index [LastName] from [dbo].[Employees]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'LastName' AND object_id = OBJECT_ID(N'[dbo].[Employees]'))
DROP INDEX [LastName] ON [dbo].[Employees]
GO
PRINT N'Dropping index [PostalCode] from [dbo].[Employees]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'PostalCode' AND object_id = OBJECT_ID(N'[dbo].[Employees]'))
DROP INDEX [PostalCode] ON [dbo].[Employees]
GO
PRINT N'Dropping index [OrderID] from [dbo].[Order Details]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'OrderID' AND object_id = OBJECT_ID(N'[dbo].[Order Details]'))
DROP INDEX [OrderID] ON [dbo].[Order Details]
GO
PRINT N'Dropping index [OrdersOrder_Details] from [dbo].[Order Details]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'OrdersOrder_Details' AND object_id = OBJECT_ID(N'[dbo].[Order Details]'))
DROP INDEX [OrdersOrder_Details] ON [dbo].[Order Details]
GO
PRINT N'Dropping index [ProductID] from [dbo].[Order Details]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'ProductID' AND object_id = OBJECT_ID(N'[dbo].[Order Details]'))
DROP INDEX [ProductID] ON [dbo].[Order Details]
GO
PRINT N'Dropping index [ProductsOrder_Details] from [dbo].[Order Details]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'ProductsOrder_Details' AND object_id = OBJECT_ID(N'[dbo].[Order Details]'))
DROP INDEX [ProductsOrder_Details] ON [dbo].[Order Details]
GO
PRINT N'Dropping index [CustomerID] from [dbo].[Orders]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'CustomerID' AND object_id = OBJECT_ID(N'[dbo].[Orders]'))
DROP INDEX [CustomerID] ON [dbo].[Orders]
GO
PRINT N'Dropping index [CustomersOrders] from [dbo].[Orders]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'CustomersOrders' AND object_id = OBJECT_ID(N'[dbo].[Orders]'))
DROP INDEX [CustomersOrders] ON [dbo].[Orders]
GO
PRINT N'Dropping index [EmployeeID] from [dbo].[Orders]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'EmployeeID' AND object_id = OBJECT_ID(N'[dbo].[Orders]'))
DROP INDEX [EmployeeID] ON [dbo].[Orders]
GO
PRINT N'Dropping index [EmployeesOrders] from [dbo].[Orders]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'EmployeesOrders' AND object_id = OBJECT_ID(N'[dbo].[Orders]'))
DROP INDEX [EmployeesOrders] ON [dbo].[Orders]
GO
PRINT N'Dropping index [OrderDate] from [dbo].[Orders]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'OrderDate' AND object_id = OBJECT_ID(N'[dbo].[Orders]'))
DROP INDEX [OrderDate] ON [dbo].[Orders]
GO
PRINT N'Dropping index [ShippedDate] from [dbo].[Orders]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'ShippedDate' AND object_id = OBJECT_ID(N'[dbo].[Orders]'))
DROP INDEX [ShippedDate] ON [dbo].[Orders]
GO
PRINT N'Dropping index [ShippersOrders] from [dbo].[Orders]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'ShippersOrders' AND object_id = OBJECT_ID(N'[dbo].[Orders]'))
DROP INDEX [ShippersOrders] ON [dbo].[Orders]
GO
PRINT N'Dropping index [ShipPostalCode] from [dbo].[Orders]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'ShipPostalCode' AND object_id = OBJECT_ID(N'[dbo].[Orders]'))
DROP INDEX [ShipPostalCode] ON [dbo].[Orders]
GO
PRINT N'Dropping index [ProductName] from [dbo].[Products]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'ProductName' AND object_id = OBJECT_ID(N'[dbo].[Products]'))
DROP INDEX [ProductName] ON [dbo].[Products]
GO
PRINT N'Dropping index [SupplierID] from [dbo].[Products]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'SupplierID' AND object_id = OBJECT_ID(N'[dbo].[Products]'))
DROP INDEX [SupplierID] ON [dbo].[Products]
GO
PRINT N'Dropping index [SuppliersProducts] from [dbo].[Products]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'SuppliersProducts' AND object_id = OBJECT_ID(N'[dbo].[Products]'))
DROP INDEX [SuppliersProducts] ON [dbo].[Products]
GO
PRINT N'Dropping index [CategoriesProducts] from [dbo].[Products]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'CategoriesProducts' AND object_id = OBJECT_ID(N'[dbo].[Products]'))
DROP INDEX [CategoriesProducts] ON [dbo].[Products]
GO
PRINT N'Dropping index [CategoryID] from [dbo].[Products]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'CategoryID' AND object_id = OBJECT_ID(N'[dbo].[Products]'))
DROP INDEX [CategoryID] ON [dbo].[Products]
GO
PRINT N'Dropping index [CompanyName] from [dbo].[Suppliers]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'CompanyName' AND object_id = OBJECT_ID(N'[dbo].[Suppliers]'))
DROP INDEX [CompanyName] ON [dbo].[Suppliers]
GO
PRINT N'Dropping index [PostalCode] from [dbo].[Suppliers]'
GO
IF EXISTS (SELECT 1 FROM sys.indexes WHERE name = N'PostalCode' AND object_id = OBJECT_ID(N'[dbo].[Suppliers]'))
DROP INDEX [PostalCode] ON [dbo].[Suppliers]
GO
PRINT N'Dropping [dbo].[Vivitha]'
GO
IF OBJECT_ID(N'[dbo].[Vivitha]', 'U') IS NOT NULL
DROP TABLE [dbo].[Vivitha]
GO
PRINT N'Dropping [dbo].[SGI]'
GO
IF OBJECT_ID(N'[dbo].[SGI]', 'U') IS NOT NULL
DROP TABLE [dbo].[SGI]
GO
PRINT N'Dropping [dbo].[Quarterly Orders]'
GO
IF OBJECT_ID(N'[dbo].[Quarterly Orders]', 'V') IS NOT NULL
DROP VIEW [dbo].[Quarterly Orders]
GO
PRINT N'Dropping [dbo].[Products by Category]'
GO
IF OBJECT_ID(N'[dbo].[Products by Category]', 'V') IS NOT NULL
DROP VIEW [dbo].[Products by Category]
GO
PRINT N'Dropping [dbo].[Products Above Average Price]'
GO
IF OBJECT_ID(N'[dbo].[Products Above Average Price]', 'V') IS NOT NULL
DROP VIEW [dbo].[Products Above Average Price]
GO
PRINT N'Dropping [dbo].[Orders Qry]'
GO
IF OBJECT_ID(N'[dbo].[Orders Qry]', 'V') IS NOT NULL
DROP VIEW [dbo].[Orders Qry]
GO
PRINT N'Dropping [dbo].[Invoices]'
GO
IF OBJECT_ID(N'[dbo].[Invoices]', 'V') IS NOT NULL
DROP VIEW [dbo].[Invoices]
GO
PRINT N'Dropping [dbo].[Customer and Suppliers by City]'
GO
IF OBJECT_ID(N'[dbo].[Customer and Suppliers by City]', 'V') IS NOT NULL
DROP VIEW [dbo].[Customer and Suppliers by City]
GO
PRINT N'Dropping [dbo].[Current Product List]'
GO
IF OBJECT_ID(N'[dbo].[Current Product List]', 'V') IS NOT NULL
DROP VIEW [dbo].[Current Product List]
GO
PRINT N'Dropping [dbo].[Alphabetical list of products]'
GO
IF OBJECT_ID(N'[dbo].[Alphabetical list of products]', 'V') IS NOT NULL
DROP VIEW [dbo].[Alphabetical list of products]
GO
PRINT N'Dropping [dbo].[Ten Most Expensive Products]'
GO
IF OBJECT_ID(N'[dbo].[Ten Most Expensive Products]', 'P') IS NOT NULL
DROP PROCEDURE [dbo].[Ten Most Expensive Products]
GO
PRINT N'Dropping [dbo].[SalesByCategory]'
GO
IF OBJECT_ID(N'[dbo].[SalesByCategory]', 'P') IS NOT NULL
DROP PROCEDURE [dbo].[SalesByCategory]
GO
PRINT N'Dropping [dbo].[CustOrdersOrders]'
GO
IF OBJECT_ID(N'[dbo].[CustOrdersOrders]', 'P') IS NOT NULL
DROP PROCEDURE [dbo].[CustOrdersOrders]
GO
PRINT N'Dropping [dbo].[CustOrdersDetail]'
GO
IF OBJECT_ID(N'[dbo].[CustOrdersDetail]', 'P') IS NOT NULL
DROP PROCEDURE [dbo].[CustOrdersDetail]
GO
PRINT N'Dropping [dbo].[CustOrderHist]'
GO
IF OBJECT_ID(N'[dbo].[CustOrderHist]', 'P') IS NOT NULL
DROP PROCEDURE [dbo].[CustOrderHist]
GO
PRINT N'Dropping [dbo].[Summary of Sales by Year]'
GO
IF OBJECT_ID(N'[dbo].[Summary of Sales by Year]', 'V') IS NOT NULL
DROP VIEW [dbo].[Summary of Sales by Year]
GO
PRINT N'Dropping [dbo].[Summary of Sales by Quarter]'
GO
IF OBJECT_ID(N'[dbo].[Summary of Sales by Quarter]', 'V') IS NOT NULL
DROP VIEW [dbo].[Summary of Sales by Quarter]
GO
PRINT N'Dropping [dbo].[Sales Totals by Amount]'
GO
IF OBJECT_ID(N'[dbo].[Sales Totals by Amount]', 'V') IS NOT NULL
DROP VIEW [dbo].[Sales Totals by Amount]
GO
PRINT N'Dropping [dbo].[Sales by Category]'
GO
IF OBJECT_ID(N'[dbo].[Sales by Category]', 'V') IS NOT NULL
DROP VIEW [dbo].[Sales by Category]
GO
PRINT N'Dropping [dbo].[Order Details Extended]'
GO
IF OBJECT_ID(N'[dbo].[Order Details Extended]', 'V') IS NOT NULL
DROP VIEW [dbo].[Order Details Extended]
GO
PRINT N'Dropping [dbo].[Category Sales for 1997]'
GO
IF OBJECT_ID(N'[dbo].[Category Sales for 1997]', 'V') IS NOT NULL
DROP VIEW [dbo].[Category Sales for 1997]
GO
PRINT N'Dropping [dbo].[Product Sales for 1997]'
GO
IF OBJECT_ID(N'[dbo].[Product Sales for 1997]', 'V') IS NOT NULL
DROP VIEW [dbo].[Product Sales for 1997]
GO
PRINT N'Dropping [dbo].[Sales by Year]'
GO
IF OBJECT_ID(N'[dbo].[Sales by Year]', 'P') IS NOT NULL
DROP PROCEDURE [dbo].[Sales by Year]
GO
PRINT N'Dropping [dbo].[Employee Sales by Country]'
GO
IF OBJECT_ID(N'[dbo].[Employee Sales by Country]', 'P') IS NOT NULL
DROP PROCEDURE [dbo].[Employee Sales by Country]
GO
PRINT N'Dropping [dbo].[Order Subtotals]'
GO
IF OBJECT_ID(N'[dbo].[Order Subtotals]', 'V') IS NOT NULL
DROP VIEW [dbo].[Order Subtotals]
GO
PRINT N'Dropping [dbo].[Region]'
GO
IF OBJECT_ID(N'[dbo].[Region]', 'U') IS NOT NULL
DROP TABLE [dbo].[Region]
GO
PRINT N'Dropping [dbo].[Suppliers]'
GO
IF OBJECT_ID(N'[dbo].[Suppliers]', 'U') IS NOT NULL
DROP TABLE [dbo].[Suppliers]
GO
PRINT N'Dropping [dbo].[Categories]'
GO
IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL
DROP TABLE [dbo].[Categories]
GO
PRINT N'Dropping [dbo].[Shippers]'
GO
IF OBJECT_ID(N'[dbo].[Shippers]', 'U') IS NOT NULL
DROP TABLE [dbo].[Shippers]
GO
PRINT N'Dropping [dbo].[Products]'
GO
IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
DROP TABLE [dbo].[Products]
GO
PRINT N'Dropping [dbo].[Order Details]'
GO
IF OBJECT_ID(N'[dbo].[Order Details]', 'U') IS NOT NULL
DROP TABLE [dbo].[Order Details]
GO
PRINT N'Dropping [dbo].[Orders]'
GO
IF OBJECT_ID(N'[dbo].[Orders]', 'U') IS NOT NULL
DROP TABLE [dbo].[Orders]
GO
PRINT N'Dropping [dbo].[Territories]'
GO
IF OBJECT_ID(N'[dbo].[Territories]', 'U') IS NOT NULL
DROP TABLE [dbo].[Territories]
GO
PRINT N'Dropping [dbo].[EmployeeTerritories]'
GO
IF OBJECT_ID(N'[dbo].[EmployeeTerritories]', 'U') IS NOT NULL
DROP TABLE [dbo].[EmployeeTerritories]
GO
PRINT N'Dropping [dbo].[Employees]'
GO
IF OBJECT_ID(N'[dbo].[Employees]', 'U') IS NOT NULL
DROP TABLE [dbo].[Employees]
GO
PRINT N'Dropping [dbo].[Customers]'
GO
IF OBJECT_ID(N'[dbo].[Customers]', 'U') IS NOT NULL
DROP TABLE [dbo].[Customers]
GO
PRINT N'Dropping [dbo].[CustomerCustomerDemo]'
GO
IF OBJECT_ID(N'[dbo].[CustomerCustomerDemo]', 'U') IS NOT NULL
DROP TABLE [dbo].[CustomerCustomerDemo]
GO
PRINT N'Dropping [dbo].[CustomerDemographics]'
GO
IF OBJECT_ID(N'[dbo].[CustomerDemographics]', 'U') IS NOT NULL
DROP TABLE [dbo].[CustomerDemographics]
GO
PRINT N'Creating [dbo].[Employee]'
GO
IF OBJECT_ID(N'[dbo].[Employee]', 'U') IS NULL
CREATE TABLE [dbo].[Employee]
(
[PersonID] [int] NULL,
[LastName] [varchar] (255) NULL,
[FirstName] [varchar] (255) NULL,
[Address] [varchar] (255) NULL,
[City] [varchar] (255) NULL
)
GO
PRINT N'Creating [dbo].[Sample1]'
GO
IF OBJECT_ID(N'[dbo].[Sample1]', 'U') IS NULL
CREATE TABLE [dbo].[Sample1]
(
[PersonID] [int] NULL,
[FirstName] [varchar] (255) NULL,
[Address] [varchar] (255) NULL,
[City] [varchar] (255) NULL
)
GO
PRINT N'Creating [dbo].[Sample]'
GO
IF OBJECT_ID(N'[dbo].[Sample]', 'U') IS NULL
CREATE TABLE [dbo].[Sample]
(
[PersonID] [int] NULL,
[LastName] [varchar] (255) NULL,
[FirstName] [varchar] (255) NULL,
[Address] [varchar] (255) NULL,
[City] [varchar] (255) NULL
)
GO
PRINT N'Creating [dbo].[Test1]'
GO
IF OBJECT_ID(N'[dbo].[Test1]', 'U') IS NULL
CREATE TABLE [dbo].[Test1]
(
[PersonID] [int] NULL,
[LastName] [varchar] (255) NULL,
[FirstName] [varchar] (255) NULL,
[Address] [varchar] (255) NULL,
[City] [varchar] (255) NULL
)
GO
PRINT N'Creating [dbo].[Test]'
GO
IF OBJECT_ID(N'[dbo].[Test]', 'U') IS NULL
CREATE TABLE [dbo].[Test]
(
[PersonID] [int] NULL,
[LastName] [varchar] (255) NULL,
[FirstName] [varchar] (255) NULL,
[Address] [varchar] (255) NULL,
[City] [varchar] (255) NULL
)
GO
