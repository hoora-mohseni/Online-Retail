-- "InvoiceNo: Invoice number. Nominal, a 6-digit integral number uniquely assigned to each transaction. 
-- If this code starts with letter 'c', it indicates a cancellation.

-- Identify returns
SELECT InvoiceNo, CustomerID, Description, Quantity, InvoiceDate , Country
FROM online_retail
WHERE Quantity < 0
    AND InvoiceNo NOT LIKE 'C%'
ORDER BY InvoiceDate;

-- Identify cancellations
SELECT InvoiceNo, CustomerID, Description, Quantity, InvoiceDate , Country
FROM online_retail
WHERE Quantity < 0
    AND InvoiceNo LIKE 'C%'
ORDER BY InvoiceDate;
