-- Pratica S3/L3
-- 1) Numero totale degli ordini
SELECT 
	COUNT(*) as 'Numero totale ordini'
FROM Orders

-- 2) Numero totale di clienti
SELECT 
	COUNT(CustomerID) as 'Clienti'
FROM Customers

-- 3) Numero totale di clienti che abitano a Londra
SELECT 
    COUNT(*) AS Londoners
FROM
    Customers
WHERE
    City = 'London';

-- 4) La media aritmetica del costo del trasporto di tutti gli ordini effettuati
SELECT 
    AVG(Freight) as 'Media costi'
FROM 
    Orders

-- 5) La media aritmetica del costo del trasporto dei soli ordini effettuati dal cliente "BOTTM"
SELECT 
    AVG(Freight) as 'Media costi BOTTM'
FROM 
    Orders
WHERE
    CustomerID = 'BOTTM'

-- 6) Totale delle spese di trasporto effettuate raggruppate per id cliente
SELECT
    CustomerID, COUNT (OrderID) as 'Totale spese per cliente'
FROM
    Orders
GROUP BY
    CustomerID

-- 7) Numero totale di clienti raggruppati per città di appartenenza
SELECT 
    City as Città, COUNT(CustomerID) as 'Tot clienti per città'
FROM 
    Customers
GROUP BY
    City

-- 8) Totale di UnitPrice * Quantity raggruppato per ogni ordine
SELECT 
    COUNT(*) as 'Tot ordini',
    SUM(UnitPrice * Quantity) as 'UP*Q'
FROM 
    [Order Details]
GROUP BY
    OrderID


-- 9) Totale di UnitPrice * Quantity solo dell'ordine con id=10248
SELECT 
    SUM(UnitPrice * Quantity) as 'TOT'
FROM 
    [Order Details]
WHERE
    OrderID = '10248'

-- 10) Numero di prodotti censiti per ogni categoria
SELECT
    SUM(ProductID) as 'Prodotti per categoria'
FROM
    Products
GROUP BY
    CategoryID

-- 11) Numero totale di ordini raggruppati per paese di spedizione (ShipCountry)
SELECT
    ShipCountry as Paese,
    COUNT(*) as 'Ordini per paese'
FROM
    Orders
GROUP BY
    ShipCountry;

-- 12) La media del costo del trasporto raggruppati per paese di spedizione (ShipCountry)
SELECT
    ShipCountry as Paese,
    AVG(Freight) AS 'Media trasporto'
FROM 
    Orders
GROUP BY
    ShipCountry
