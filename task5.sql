SELECT CompanyName AS Company, ProductName AS Product, UnitPrice AS Price
	FROM suppliers
	JOIN products ON suppliers.supplierid = products.supplierid
	WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM products WHERE suppliers.supplierid = products.supplierid)
	ORDER BY UnitPrice DESC, ProductName, CompanyName;