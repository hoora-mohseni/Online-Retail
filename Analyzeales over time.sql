SELECT DATE(InvoiceDate) AS SaleDate, SUM(Quantity * UnitPrice) AS DailySales
FROM online_retail
GROUP BY SaleDate
ORDER BY SaleDate;

-- This query groups the sales by date and calculates the daily sales