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



