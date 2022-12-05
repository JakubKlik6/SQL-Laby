SELECT 'Witaj Œwiecie'

SELECT * FROM dbo.Employees;

SELECT FirstName,LastName FROM Employees

SELECT LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City FROM Employees

SELECT * FROM dbo.[Order Details]

SELECT FirstName AS Imie ,LastName AS Nazwisko FROM Employees

SELECT *, Quantity*UnitPrice AS Value FROM [Order Details]

SELECT *, Value = Quantity*UnitPrice FROM [Order Details]

SELECT OD.OrderID, OD.Quantity*OD.UnitPrice AS Value FROM [Order Details] AS OD

SELECT [Order Details].OrderID, [Order Details].Quantity*[Order Details].UnitPrice AS Value FROM [Order Details]

SELECT DISTINCT Country, City FROM Customers

SELECT *, Quantity*UnitPrice AS Value FROM [Order Details] WHERE UnitPrice > 16 ORDER BY UnitPrice DESC, Quantity

SELECT *, Quantity*UnitPrice AS Value FROM [Order Details] WHERE UnitPrice > 16 and UnitPrice < 50 ORDER BY Quantity

SELECT *, Quantity*UnitPrice AS Value FROM [Order Details] WHERE UnitPrice > 16 ORDER BY Value

-- txt

/* 
Arka
Gdynia
*/

-- N - unikod, rozszerzony alfabet
SELECT * FROM Customers WHERE Country = N'UK' or Country = N'France' or Country = N'Canada'

SELECT * FROM Customers WHERE Country IN (N'UK', N'France', N'Canada')