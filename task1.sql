SELECT ProductName AS Product, CompanyName AS Company
FROM suppliers
	JOIN products ON suppliers.supplierid = products.supplierid
	ORDER BY ProductName, CompanyName;