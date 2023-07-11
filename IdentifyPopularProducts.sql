SELECT Description, SUM(Quantity) AS TotalQuantity
FROM online_retail
GROUP BY Description
ORDER BY TotalQuantity DESC
LIMIT 10;

