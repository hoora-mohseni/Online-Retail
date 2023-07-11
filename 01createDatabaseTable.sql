CREATE DATABASE Database_online_retail;

CREATE TABLE online_retail (
  InvoiceNo VARCHAR(10),
  StockCode VARCHAR(255),
  Description VARCHAR(255),
  Quantity INT,
  InvoiceDate DATETIME,
  UnitPrice DECIMAL(10, 3),
  CustomerID INT,
  Country VARCHAR(100)
);

-- Adding a new column named 'id' 

ALTER TABLE online_retail
ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY FIRST;

SELECT * 
FROM Database_online_retail.online_retail;
