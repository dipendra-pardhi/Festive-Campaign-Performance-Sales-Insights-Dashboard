CREATE DATABASE festive_sales;


CREATE TABLE sales (
    user_id INT,
    cust_name TEXT,
    product_id TEXT,
    gender TEXT,
    age_group TEXT,
    age INT,
    marital_status INT,
    state TEXT,
    zone TEXT,
    occupation TEXT,
    product_category TEXT,
    orders INT,
    amount INT,
    avg_order_value FLOAT
);

COPY sales
FROM 'C:\Users\Dipendra\Desktop\diwali_cleaned.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM sales LIMIT 10;


SELECT SUM(amount) AS total_revenue
FROM sales;

SELECT SUM(orders) AS total_orders
FROM sales;

SELECT state, SUM(amount) AS revenue
FROM sales
GROUP BY state
ORDER BY revenue DESC
LIMIT 5;

SELECT gender, SUM(amount) AS revenue
FROM sales
GROUP BY gender;

SELECT age_group, SUM(amount) AS revenue
FROM sales
GROUP BY age_group
ORDER BY revenue DESC;

SELECT product_category, SUM(amount) AS revenue
FROM sales
GROUP BY product_category
ORDER BY revenue DESC
LIMIT 5;