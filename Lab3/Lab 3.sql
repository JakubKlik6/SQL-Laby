DROP VIEW IF EXISTS OrderView;
GO

CREATE VIEW OrderView
AS
SELECT OD.ProductID as ProdID, OD.UnitPrice As Price, OD.UnitPrice AS Quant, OD.Discount AS Bonus, OD.UnitPrice * OD.Quantity as Value,
O.OrderDate AS DateOfOrder, O.ShipCountry AS ShippingCountry
FROM  [Order Details] as OD
Inner JOIN Orders as O
on od.OrderID=o.OrderID

SELECT * FROM OrderView

SELECT price, value FROM OrderView


///////////////////////////// Procedura


DROP PROC IF EXISTS MojaProcedura;
GO

CREATE PROCEDURE MojaProcedura
AS
SELECT FirstName, LastName
FROM Employees

EXEC MojaProcedura


////////////////////////// typy danych
SELECT GETDATE(), CURRENT_TIMESTAMP,
GETUTCDATE()

SELECT YEAR(CURRENT_TIMESTAMP)
SELECT MONTH(CURRENT_TIMESTAMP)
SELECT DAY(CURRENT_TIMESTAMP)

SELECT CAST(CURRENT_TIMESTAMP as Date)
SELECT CAST(CURRENT_TIMESTAMP as time)

SELECT DATEDIFF(second, '01/01/2023', GETDATE())
SELECT DATEDIFF(day, '01/01/2023', GETDATE())

SELECT DATEADD(DAY,100,'01/01/2022')

SELECT EOMONTH(GETDATE())

SELECT DATEADD(DAY,1,EOMONTH(getdate()))
SELECT DATEADD(DAY,1,EOMONTH(getdate(),-1))

----------------------
SELECT LEFT('Arka Gdynia',4)

SELECT RIGHT('Arka Gdynia',6)

SELECT LEN('SQL jest najlepszym przedmiotem     ')

SELECT DATALENGTH('SQL jest najlepszym przedmiotem     ')

SELECT REPLACE('SQL jest najlepszym przedmiotem','SQL','Python')

SELECT SUBSTRING('SQL jest najlepszym przedmiotem',5,5)

SELECT CHARINDEX('SQL','SQL jest najlepszym przedmiotem SQL',2)

//////////////////////////////////////////////

SELECT city,region,country,
city + ' ' + COALESCE(region, '') + ' ' + country
FROM Customers

SELECT city,region,country,
city + ' ' + ISNULL(region, '') + ' ' + country
FROM Customers

SELECT city,region,country,
CONCAT(city , ' ' , COALESCE(region, '') , ' ' , country)
FROM Customers

SELECT CONVERT(date,GETDATE())

SELECT CONVERT(varchar(12),GETDATE(), 101)

------
DECLARE @v1 int = 5
DECLARE @v2 char(5) = 'six'

SELECT CAST(@v1 as char(5)) + @v2


////////////////////////////////////////////////// Funkcje agregujące


SELECT SUM(Quantity), AVG(UnitPrice),MAX(Discount), MIN(Discount),
COUNT(*)
FROM [Order Details]

SELECT orderID,SUM(Quantity), AVG(UnitPrice),MAX(Discount), MIN(Discount),
COUNT(*)
FROM [Order Details]
GROUP BY OrderID

SELECT orderID,SUM(Quantity) as QuamtSUM, AVG(UnitPrice) as AVGprice,
COUNT(*) as Rowno
FROM [Order Details]
GROUP BY OrderID
HAVING SUM(Quantity) > 50

//////////////////////////////////////////////

SELECT city, region, country
FROM Employees
UNION
SELECT city, region, country
FROM Customers

SELECT city, region, country
FROM Employees
UNION ALL
SELECT city, region, country
FROM Customers

SELECT city, region, country
FROM Employees
INTERSECT
SELECT city, region, country
FROM Customers

SELECT city, region, country
FROM Employees
EXCEPT
SELECT city, region, country
FROM Customers

///////////////////////////////////////////


SELECT OrderID,OrderDate,EmployeeID
FROM Orders as o
inner join customers as c
on o.CustomerID=c.CustomerID
where c.Country='Mexico'

SELECT OrderID,EmployeeID,OrderDate
FROM Orders
WHERE CustomerID IN (
SELECT CustomerID
FROM Customers
WHERE Country='Mexico'
)
