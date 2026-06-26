SELECT 
    c.EnglishProductCategoryName AS Category,
    s.EnglishProductSubcategoryName AS Subcategory,
    SUM(f.SalesAmount) AS Value
FROM FactInternetSales f
JOIN DimProduct p ON f.ProductKey = p.ProductKey
JOIN DimProductSubcategory s ON p.ProductSubcategoryKey = s.ProductSubcategoryKey
JOIN DimProductCategory c ON s.ProductCategoryKey = c.ProductCategoryKey
GROUP BY 
    c.EnglishProductCategoryName,
    s.EnglishProductSubcategoryName