
-- Identify duplicate rows

SELECT  InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country, COUNT(*) as DuplicateCount
FROM online_retail
GROUP BY  InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country
HAVING COUNT(*) > 1;

-- Disable safe update mode
SET SQL_SAFE_UPDATES = 0;

WITH cte AS (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country, InvoiceNo ORDER BY id) AS rn
  FROM online_retail
)
DELETE FROM online_retail
WHERE id IN (
  SELECT id FROM cte WHERE rn > 1
);

-- Re-enable safe update mode
SET SQL_SAFE_UPDATES = 1;