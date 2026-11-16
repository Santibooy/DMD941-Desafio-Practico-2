USE AdventureWorksDW2022;
GO

SELECT
    t.SalesTerritoryRegion AS Territorio,
    SUM(f.SalesAmount) AS TotalVentas
FROM FactInternetSales AS f
INNER JOIN DimSalesTerritory AS t
    ON f.SalesTerritoryKey = t.SalesTerritoryKey
GROUP BY t.SalesTerritoryRegion
ORDER BY TotalVentas DESC;
--ventas por paises