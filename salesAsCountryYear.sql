SELECT 
	YEAR(invoicedate) AS years,
    SUM(quantity * unitprice) AS sales , 
    country
FROM online_retail 

GROUP BY 
	years , country 
ORDER BY 
	years , sales DESC ;

