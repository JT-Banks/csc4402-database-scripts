SELECT user_id FROM users as u, orders as o
WHERE u.user_id = o.user_id AND
COUNT(o.order_id) > 1;

/* Qeury for top 25 total spent in orders table */
SELECT total, user_id, order_id 
FROM orders
WHERE total > 50
ORDER BY total DESC 
LIMIT 25;

SELECT address_book.user_id 
FROM address_book INNER JOIN address
WHERE country = 'United States';

SELECT address_book.user_id, users.username 
FROM address_book 
INNER JOIN users 
ON address_book.user_id = users.user_id
ORDER BY users.username;

/* Query for orders created after June 18, 2021 */
SELECT order_id, created_at FROM orders
WHERE created_at > '2021-06-18 00:00:00'
GROUP BY created_at;

SELECT user_id FROM orders
WHERE total < 55
ORDER BY total;

SELECT product_id, SUM(o.quantity) AS TotalQuantity
FROM order_items o LEFT JOIN products p
WHERE category = 'Electronics';
-- GROUP BY product_id 
-- ORDER BY  DESC;

Select DISTINCT products.category, SUM(order_items.quantity) AS Total_Sold
From order_items
GROUP BY products.category 
LEFT JOIN products ON order_items.product_id = products.product_id
ORDER BY category DESC;

Select order_items.quantity, products.product_id, products.category
From order_items
Inner Join products ON order_items.product_id = products.product_id
GROUP BY products.category
ORDER BY order_items.quantity DESC;

SELECT DISTINCT products.category 
FROM products;

SELECT total AS total_spent, orders.user_id, users.last_name 
FROM orders LEFT JOIN users ON orders.user_id = users.user_id 
ORDER BY total_spent DESC 
LIMIT 20;

SELECT name, percent 
FROM discount 
WHERE percent > 80
ORDER BY percent DESC;

SELECT last_name, first_name, country 
FROM users
WHERE country = 'China'
ORDER BY last_name;