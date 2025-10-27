use customer;
-- Indexes: After loading into MySQL, add an index on Order_Date, Category, Sub_Category, and Product_ID for faster aggregation.
CREATE INDEX idx_order_date ON Retail_Sales(Order_Date);
CREATE INDEX idx_category ON Retail_Sales(Category);
CREATE INDEX idx_subcategory ON Retail_Sales(Sub_Category);
CREATE INDEX idx_product ON Retail_Sales(Product_ID);
-- Check for negative Profit rows (returns, discounts, data issues).
SELECT COUNT(*) FROM Retail_Sales WHERE Profit < 0;
SELECT * FROM Retail_Sales WHERE Profit < 0 ORDER BY ABS(Profit) DESC LIMIT 50;
