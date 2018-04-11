SELECT CompanyName AS Company
FROM suppliers
	JOIN products ON suppliers.supplierid = products.supplierid
	GROUP BY CompanyName
	HAVING COUNT(ProductName) = 5
	ORDER BY CompanyName;