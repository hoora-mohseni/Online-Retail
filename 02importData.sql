USE Database_online_retail ;

LOAD DATA INFILE '/usr/local/mysql/data/OnlineRetail.csv'
INTO TABLE online_retail
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, @CustomerID, Country)
SET CustomerID = NULLIF(@CustomerID, '');


