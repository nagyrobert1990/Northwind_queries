SELECT CompanyName AS Customer, string_agg(orderid::character varying, ',') AS OrderNumbers
FROM customers
	JOIN orders ON customers.customerid = orders.customerid
	GROUP BY CompanyName
	ORDER BY CompanyName;