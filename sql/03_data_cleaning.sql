USE RetailBusinessAnalytics;
GO

-- Check for NULL values
SELECT 
    SUM(CASE WHEN Profit IS NULL THEN 1 ELSE 0 END) AS null_profit,
    SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS null_sales
FROM retail_sales_raw;

-- View duplicate rows
SELECT
    Order_ID,
    Product_ID, 
    COUNT(*) AS duplicate_count
FROM retail_sales_raw
GROUP BY Order_ID, Product_ID
HAVING COUNT(*) > 1;

--Preview data 
SELECT TOP 20 *
FROM retail_sales_raw;