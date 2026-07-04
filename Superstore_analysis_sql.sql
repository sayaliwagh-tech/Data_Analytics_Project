CREATE DATABASE superstore_db;
USE superstore_db;

--
SELECT * FROM superstore;

--  Total sales by region
SELECT region, SUM(sales) AS total_sales
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;

-- Top 10 states by sales
SELECT state, SUM(sales) AS total_sales
FROM superstore
GROUP BY state
ORDER BY total_sales DESC
LIMIT 10;

-- Average profit by discount
SELECT discount, AVG(profit) as avg_profit
FROM superstore
GROUP BY discount
ORDER BY discount;

-- Profit by Category
SELECT category, ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY category
ORDER BY total_profit DESC;

-- Most profitable sub-categories
SELECT sub_category, ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY sub_category
ORDER BY total_profit DESC
LIMIT 5;

-- Loss-Making sub-categories
SELECT sub_category, ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY sub_category
ORDER BY total_profit ASC;

-- Sales by Customer Segment
SELECT segment, ROUND(SUM(sales), 2) AS total_sales
FROM superstore
GROUP BY segment
ORDER BY total_sales DESC;

-- Profit by customer segment
SELECT segment, ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY segment
ORDER BY total_profit DESC;

-- Top 5 states by profit
SELECT state, ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY state
ORDER BY total_profit DESC
LIMIT 5;

-- Bottom 5 states by profit
SELECT state, ROUND(SUM(profit), 2) AS total_profit
FROM superstore
GROUP BY state 
ORDER BY total_profit ASC
LIMIT 5;

-- Categories with average discount above 20%
SELECT category, ROUND(SUM(discount), 2) AS avg_discount
FROM superstore
GROUP BY category
HAVING avg_discount > 0.20;