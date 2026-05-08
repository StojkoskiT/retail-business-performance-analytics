USE RetailBusinessAnalytics;
GO

DROP TABLE IF EXISTS retail_sales_clean;
GO

SELECT
    Row_ID,
    Order_ID,
    CAST(Order_Date AS DATE) AS Order_Date,
    CAST(Ship_Date AS DATE) AS Ship_Date,
    Ship_Mode,
    Customer_ID,
    Customer_Name,
    Segment,
    Country,
    City,
    State,
    Postal_Code,
    Region,
    Product_ID,
    Category,
    Sub_Category,
    Product_Name,
    CAST(Sales AS DECIMAL(10,2)) AS Sales,
    CAST(Quantity AS INT) AS Quantity,
    CAST(Discount AS DECIMAL(10,2)) AS Discount,
    CAST(Profit AS DECIMAL(10,2)) AS Profit
INTO retail_sales_clean
FROM retail_sales_raw
WHERE
    Sales IS NOT NULL
    AND Profit IS NOT NULL
    AND Order_Date IS NOT NULL;
GO

SELECT TOP 10 *
FROM retail_sales_clean;

SELECT COUNT(*) AS clean_total_rows
FROM retail_sales_clean;
