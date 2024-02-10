-- Find the number of items on the menu
SELECT COUNT(*) AS total_items FROM menu_items;

-- Find the least and most expensive items on the menu
SELECT * FROM menu_items ORDER BY price LIMIT 1;
SELECT * FROM menu_items ORDER BY price DESC LIMIT 1;

-- Count Italian dishes, and find least and most expensive Italian dishes
SELECT COUNT(*) AS italian_dishes FROM menu_items WHERE category = 'Italian';
SELECT * FROM menu_items WHERE category = 'Italian' ORDER BY price LIMIT 1;
SELECT * FROM menu_items WHERE category = 'Italian' ORDER BY price DESC LIMIT 1;

-- Count dishes in each category and average dish price within each category
SELECT category, COUNT(*) AS total_dishes, AVG(price) AS average_price 
FROM menu_items 
GROUP BY category;
