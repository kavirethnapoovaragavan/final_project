-- Seasonal / monthly behavior (profit margin by month):
SELECT
  DATE_FORMAT(Order_Date, '%Y-%m') AS ym,
  SUM(Sales) AS total_sales,
  SUM(Profit) AS total_profit,
  (SUM(Profit) / SUM(Sales)) AS weighted_profit_margin
FROM Retail_Sales
GROUP BY ym
ORDER BY ym;
