-- 1. Top 10 Products by Revenue
SELECT
    `Product Name`,
    ROUND(SUM(Sales),2) AS Revenue
FROM sales_data
GROUP BY `Product Name`
ORDER BY Revenue DESC
LIMIT 10;


-- 2. Top 10 Customers by Sales
SELECT
    `Customer Name`,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_data
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;


-- 3. Monthly Sales Trend
SELECT
    Year,
    Month,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_data
GROUP BY Year, Month
ORDER BY Year, Month;


-- 4. Average Profit Margin by Category
SELECT
    Category,
    ROUND(AVG(`Profit Margin`),2) AS Avg_Profit_Margin
FROM sales_data
GROUP BY Category
ORDER BY Avg_Profit_Margin DESC;


-- 5. Orders with Sales Greater than 5000
SELECT *
FROM sales_data
WHERE Sales > 5000;


-- 6. States with Sales Greater than 100000
SELECT
    State,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM sales_data
GROUP BY State
HAVING SUM(Sales) > 100000;


-- 7. Product with Highest Profit
SELECT
    `Product Name`,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_data
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 1;


-- 8. Average Shipping Days
SELECT
    ROUND(AVG(`Shipping Days`),2) AS Average_Shipping_Days
FROM sales_data;


-- 9. Maximum Discount
SELECT
    MAX(Discount) AS Maximum_Discount
FROM sales_data;


-- 10. Minimum Profit
SELECT
    MIN(Profit) AS Minimum_Profit
FROM sales_data;


-- 11. Region-wise Average Profit
SELECT
    Region,
    ROUND(AVG(Profit),2) AS Average_Profit
FROM sales_data
GROUP BY Region
ORDER BY Average_Profit DESC;
