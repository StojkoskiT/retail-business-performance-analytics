USE RetailBusinessAnalytics;
GO

CREATE TABLE retail_salse (
	Row_ID INT,
	Order_ID VARCHAR(50),
	Order_Date DATE, 
	Ship_Date DATE,
	Ship_Mode VARCHAR(100),
	Customer_ID VARCHAR(50),
	Customer_Name VARCHAR(255),
	Segment VARCHAR(100),
	Country VARCHAR(100),
	City VARCHAR(100),
	State VARCHAR(100),
	Postal_Code VARCHAR(20),
	Region VARCHAR(100),
	Product_ID VARCHAR(100),
	Category VARCHAR(100),
	Sub_Category VARCHAR(100),
	Product_Name VARCHAR(255),
	Sales DECIMAL(10,2),
	Quantity INT,
	Discount DECIMAL(10,2),
	Profit DECIMAL(10,2)
);