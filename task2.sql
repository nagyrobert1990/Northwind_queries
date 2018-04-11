SELECT CompanyName AS Company, COUNT(ProductName) AS NumberOfProducts
FROM suppliers
	JOIN products ON suppliers.supplierid = products.supplierid
	GROUP BY CompanyName
	ORDER BY NumberOfProducts, CompanyName;