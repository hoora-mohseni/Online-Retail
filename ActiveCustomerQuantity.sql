CREATE TEMPORARY TABLE TopCustomers AS (
    SELECT CustomerID, SUM(Quantity) AS TotalQuantity
    FROM online_retail
    GROUP BY CustomerID
    ORDER BY TotalQuantity DESC
    LIMIT 20
);

SELECT c.CustomerID, DATE(o.InvoiceDate) AS SaleDate, SUM(o.Quantity) AS TotalQuantity 
FROM online_retail o
JOIN TopCustomers c ON o.CustomerID = c.CustomerID
GROUP BY c.CustomerID, SaleDate , o.Description
ORDER BY TotalQuantity desc
LIMIT 20 ;
