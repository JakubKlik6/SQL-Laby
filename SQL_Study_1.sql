-- database diagram error 15517 fixing 
USE KCC
GO
SELECT SUSER_SNAME(sid), * from sys.database_principals

USE KCC
GO
ALTER AUTHORIZATION ON DATABASE::KCC TO [sa]
GO

-- list of all customers names 
SELECT CustomerName 
FROM dbo.Customers

-- List of all customers names and notes 
SELECT CustomerName, Notes
FROM dbo.Customers

-- aliases 
SELECT CustomerName AS [Customer Name]
FROM dbo.Customers

-- distinct list of customers names 
SELECT distinct CustomerName AS [Customers]
FROM dbo.Customers

-- selecting top 3 rows 
SELECT TOP(3) * 
FROM dbo.Customers

-- select customer which lives in WA 
SELECT CustomerName, Phone, Address
FROM Customers
WHERE State = 'WA'

-- select customer which do not lives in WA 
SELECT CustomerName, Phone, Address
FROM Customers
WHERE State <> 'WA'

-- or statement
SELECT CustomerName
FROM Customers
WHERE State = 'WA' OR State = 'NY'

-- in % not in
SELECT *
FROM Customers
WHERE State IN('WA', 'NY', 'UT')

SELECT *
FROM Customers
WHERE State NOT IN('WA', 'NY', 'UT')

-- and statement 
SELECT * 
FROM Customers
WHERE State = '' AND Country = 'France'

-- LIKE / NOT LIKE
SELECT *
FROM Customers
WHERE CustomerName LIKE 'A%'

SELECT *
FROM Customers
WHERE CustomerName NOT LIKE 'A%'

-- filter with numbers
SELECT * 
FROM dbo.Orders
WHERE OrderTotal > 1000

SELECT * 
FROM dbo.Orders
WHERE OrderTotal between 1000 and 2000

-- Joins -> shows us customers with orders
SELECT OrderID, 
OrderDate, 
OrderTotal,
CustomerName,
Phone
FROM dbo.Orders o
Inner Join dbo.Customers c on o.CustomerID = c.CustomerID

--Right outer Join -> shows us all customers with orders, and without orders
SELECT OrderID, 
OrderDate, 
OrderTotal,
CustomerName,
Phone
FROM dbo.Orders o
Right outer Join dbo.Customers c on o.CustomerID = c.CustomerID

-- Left outer Join -> shows us all customers with orders and orders without customers
SELECT OrderID, 
OrderDate, 
OrderTotal,
CustomerName,
Phone
FROM dbo.Orders o
Left outer Join dbo.Customers c on o.CustomerID = c.CustomerID

-- order by
SELECT OrderID, 
OrderDate, 
OrderTotal,
CustomerName,
Phone
FROM dbo.Orders o
Left outer Join dbo.Customers c on o.CustomerID = c.CustomerID
Order by OrderTotal

-- functions 
SELECT *
FROM dbo.Orders
WHERE OrderDate >= Dateadd(month, -1, GETDATE())

SELECT count(OrderTotal)
FROM dbo.Orders
WHERE OrderDate <= Dateadd(month, -1, GETDATE())