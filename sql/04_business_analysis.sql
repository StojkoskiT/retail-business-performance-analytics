USE RetailBusinessAnalytics;
GO

-- 1. Overall business KPIs
SELECT
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    SUM(Quantity) AS total_quantity,
    COUNT(DISTINCT Order_ID) AS total_orders
FROM retail_sales_raw;

-- 2. Sales and profit by category
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM retail_sales_raw
GROUP BY Category
ORDER BY total_sales DESC;

-- 3. Sales and profit by region
SELECT
    Region,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM retail_sales_raw
GROUP BY Region
ORDER BY total_sales DESC;

-- 4. Monthly sales trend
SELECT
    YEAR(Order_Date) AS order_year,
    MONTH(Order_Date) AS order_month,
    ROUND(SUM(Sales), 2) AS monthly_sales,
    ROUND(SUM(Profit), 2) AS monthly_profit
FROM retail_sales_raw
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY order_year, order_month;

-- 5. Top 10 products by sales
SELECT TOP 10
    Product_Name,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM retail_sales_raw
GROUP BY Product_Name
ORDER BY total_sales DESC;