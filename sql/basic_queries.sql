-- 1. Total Revenue
SELECT ROUND(SUM(Sales),2) AS Total_Revenue
FROM sales_data;

-- 2. Total Profit
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_data;

-- 3. Total Orders
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM sales_data;

-- 4. Total Customers
SELECT COUNT(DISTINCT `Customer ID`) AS Total_Customers
FROM sales_data;

-- 5. Total Products
SELECT COUNT(DISTINCT `Product ID`) AS Total_Products
FROM sales_data;

-- 6. Average Order Value
SELECT ROUND(AVG(Sales),2) AS Average_Order_Value
FROM sales_data;

-- 7. Sales by Category
SELECT
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_data
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 8. Profit by Category
SELECT
    Category,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_data
GROUP BY Category
ORDER BY Total_Profit DESC;

-- 9. Top 10 States by Sales
SELECT
    State,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_data
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

-- 10. Sales by Region
SELECT
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;
