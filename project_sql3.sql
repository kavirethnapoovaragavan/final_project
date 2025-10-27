-- Profit margin by Sub-Category (within Category):
SELECT
  Category,
  Sub_Category,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit,
  (SUM(Profit) / SUM(Sales)) AS weighted_profit_margin
FROM Retail_Sales
GROUP BY Category, Sub_Category
ORDER BY weighted_profit_margin ASC;
