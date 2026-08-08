SELECT
    Category,
    SUM(Sales)
FROM sales_data
GROUP BY Category;

CREATE VIEW category_sales AS
SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Category;

SELECT *
FROM category_sales;


-- 1. Category Sales
CREATE VIEW vw_category_sales AS
SELECT
    Category,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_data
GROUP BY Category;


-- 2. Regional Sales
CREATE VIEW vw_region_sales AS
SELECT
    Region,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_data
GROUP BY Region;

-- 3. Customer Sales
CREATE VIEW vw_customer_sales AS
SELECT
    `Customer Name`,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_data
GROUP BY `Customer Name`;


-- 4. Monthly Sales
CREATE VIEW vw_monthly_sales AS
SELECT
    YEAR(`Order Date`) AS Order_Year,
    MONTH(`Order Date`) AS Order_Month,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM sales_data
GROUP BY YEAR(`Order Date`), MONTH(`Order Date`);


SHOW FULL TABLES
WHERE TABLE_TYPE='VIEW';
