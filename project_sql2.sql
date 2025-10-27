-- Profit margin by Category (weighted by sales):
SELECT
  Category,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit,
  (SUM(Profit) / SUM(Sales)) AS weighted_profit_margin
FROM Retail_Sales
GROUP BY Category
ORDER BY weighted_profit_margin ASC;  -- lowest margins first
