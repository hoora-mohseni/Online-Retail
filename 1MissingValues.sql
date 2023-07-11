-- Handling Missing Values 
-- No missing values found

SELECT
  SUM(CASE WHEN InvoiceNo IS NULL THEN 1 ELSE 0 END) AS Missing_InvoiceNo,
  SUM(CASE WHEN StockCode IS NULL THEN 1 ELSE 0 END) AS Missing_StockCode,
  SUM(CASE WHEN Description IS NULL THEN 1 ELSE 0 END) AS Missing_Description,
  SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS Missing_Quantity,
  SUM(CASE WHEN InvoiceDate IS NULL THEN 1 ELSE 0 END) AS Missing_InvoiceDate,
  SUM(CASE WHEN UnitPrice IS NULL THEN 1 ELSE 0 END) AS Missing_UnitPrice,
  SUM(CASE WHEN CustomerID IS NULL THEN 1 ELSE 0 END) AS Missing_CustomerID,
  SUM(CASE WHEN Country IS NULL THEN 1 ELSE 0 END) AS Missing_Country
FROM online_retail;


