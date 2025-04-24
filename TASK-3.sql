CREATE DATABASE ecommerce_db;
show tables;

SELECT * 
FROM fact_table 
WHERE total_price > 100 
ORDER BY total_price DESC 
LIMIT 10;


SELECT item_key, SUM(total_price) AS total_sales 
FROM fact_table 
GROUP BY item_key 
ORDER BY total_sales DESC;

-- Join fact_table with item_dim to get item name and total price
SELECT f.item_key, i.item_name, f.quantity, f.total_price 
FROM fact_table f
INNER JOIN item_dim i ON f.item_key = i.item_key;


-- Show sales along with store location info
SELECT f.*, s.division, s.district, s.upazila 
FROM fact_table f
LEFT JOIN store_dim s ON f.store_key = s.store_key;


-- Find items whose average price is greater than overall average
SELECT item_key, AVG(total_price) AS avg_price
FROM fact_table
GROUP BY item_key
HAVING avg_price > (
    SELECT AVG(total_price) FROM fact_table
);


-- Create a view for monthly item sales
CREATE VIEW monthly_item_sales AS
SELECT t.month, f.item_key, SUM(f.total_price) AS monthly_sales
FROM fact_table f
JOIN time_dim t ON f.time_key = t.time_key
GROUP BY t.month, f.item_key;


-- Add index on item_key and store_key to speed up joins/filters
CREATE INDEX idx_item_key ON fact_table(item_key);
CREATE INDEX idx_store_key ON fact_table(store_key);






SELECT f.*, s.division, s.district, s.upazila 
FROM fact_table f
RIGHT JOIN store_dim s ON f.store_key = s.store_key;


