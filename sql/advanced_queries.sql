
-- CASE WHEN
-- Classify orders based on sales.
SELECT
    `Order ID`,
    `Product Name`,
    Sales,
    CASE
        WHEN Sales < 100 THEN 'Low'
        WHEN Sales >= 100 AND Sales < 500 THEN 'Medium'
        ELSE 'High'
    END AS Sales_Category




    -- Window Functions
    SELECT
    `Customer Name`,
    SUM(Sales) AS Revenue,
    RANK() OVER(ORDER BY SUM(Sales) DESC) AS Customer_Rank
FROM sales_data
GROUP BY `Customer Name`;


-- Common Table Expressions (CTE)

WITH customer_sales AS
(
    SELECT
        `Customer Name`,
        SUM(Sales) AS Revenue
    FROM sales_data
    GROUP BY `Customer Name`
)

SELECT *
FROM customer_sales;


-- Views
CREATE VIEW top_customers AS
SELECT
    `Customer Name`,
    SUM(Sales) AS Revenue
FROM sales_data
GROUP BY `Customer Name`;
