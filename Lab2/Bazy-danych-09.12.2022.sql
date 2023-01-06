SELECT 'Witaj Świecie';
SELECT *
FROM dbo.Employees;

SELECT FirstName, LastName
FROM Employees

SELECT EmployeeID, LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, Region
FROM Employees;

SELECT *
FROM dbo.[Order Details];

SELECT FirstName AS Imie, LastName AS Nazwisko
FROM Employees

SELECT *, Quantity*UnitPrice AS Value
FROM dbo.[Order Details];

SELECT *, Quantity*UnitPrice Value
FROM dbo.[Order Details];

SELECT *, Value = Quantity*UnitPrice
FROM dbo.[Order Details] AS OD;

SELECT OD.OrderID, OD.Quantity*OD.UnitPrice AS Value
FROM dbo.[Order Details] AS OD;

SELECT [Order Details].OrderID, [Order Details].Quantity*[Order Details].UnitPrice AS Value
FROM dbo.[Order Details];

SELECT DISTINCT Country
FROM Customers;

SELECT DISTINCT Country, City
FROM Customers;

SELECT *, Quantity*UnitPrice AS Value
FROM dbo.[Order Details]
WHERE UnitPrice>16
ORDER BY UnitPrice

SELECT *, Quantity*UnitPrice AS Value
FROM dbo.[Order Details]
WHERE UnitPrice>16 and UnitPrice>50
ORDER BY UnitPrice

SELECT *, Quantity*UnitPrice AS Value
FROM dbo.[Order Details]
WHERE UnitPrice between 16 AND 50
ORDER BY UnitPrice

SELECT *, Quantity*UnitPrice AS Value
FROM dbo.[Order Details]
WHERE UnitPrice != 2
ORDER BY UnitPrice

SELECT *, Quantity*UnitPrice AS Value
FROM dbo.[Order Details]
--WHERE Value >= 2
ORDER BY Value

/*SELECT *, Quantity*UnitPrice AS Value
FROM dbo.[Order Details]
WHERE Value >= 2
ORDER BY Value */

SELECT *
FROM Customers
WHERE Country = N'UK' OR Country = N'France' OR Country = 'Canada'

SELECT *
FROM Customers
WHERE Country IN (N'UK','France','Canada')

SELECT FirstName, LastName
FROM Employees
WHERE LastName LIKE N'D%'

SELECT FirstName, LastName
FROM Employees
WHERE LastName LIKE N'_e%'

SELECT FirstName, LastName
FROM Employees
WHERE LastName LIKE N'[A-M]%'