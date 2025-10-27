-- Shows total quantity sold for each product by month.
SELECT
   Product_ID,
   Product_Name,
   DATE_FORMAT(Order_Date, '%Y-%m') AS ym,
   SUM(Quantity) AS qty_sold
FROM Retail_Sales
GROUP BY Product_ID, Product_Name, ym
ORDER BY Product_ID, ym
LIMIT 0, 1000;

