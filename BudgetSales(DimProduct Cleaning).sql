--Printing out the product table
SELECT *
FROM DimProduct

--Cleaning and Sorting the product table
SELECT ProductKey,
ProductAlternateKey,
EnglishProductName,
ProductSubcategoryKey,
CASE
	WHEN Status IS NULL THEN 'Unavailable'
	ELSE Status
END AS 'Product Status'
FROM DimProduct