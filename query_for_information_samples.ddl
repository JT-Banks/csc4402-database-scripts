
SELECT user_id FROM users as u, orders as o
WHERE u.user_id = o.user_id AND
COUNT(o.order_id) > 1;

/* Qeury for top 25 total spent in orders table */
SELECT total, user_id, order_id 
FROM orders
WHERE total > 50
ORDER BY total DESC 
LIMIT 25;

/* Find users in the U.S */
SELECT address_book.user_id 
FROM address_book INNER JOIN address
WHERE country = 'United States';

/* Find user address_book_id based on username */
SELECT address_book.user_id, users.username 
FROM address_book 
INNER JOIN users 
ON address_book.user_id = users.user_id
ORDER BY users.username;

/* Query for orders created after June 18, 2021 */
SELECT order_id, created_at FROM orders
WHERE created_at > '2021-06-18 00:00:00'
GROUP BY created_at;

/* Users whose total orders are less than 50 */
SELECT user_id FROM orders
WHERE total < 55
ORDER BY total;

/* Total electronics order quantity(how many items total) */
SELECT o.product_id, SUM(o.quantity) AS TotalQuantity
FROM order_items o INNER JOIN products p
WHERE p.category = 'Electronics';

/* Discount with less than 5% (Database insertion currently does not contain a 0 value, least value is 1) */
SELECT discount_id, name, percent 
FROM discount d 
WHERE percent < 5;

/* Displays discounted items */
SELECT product_id, original_price, discounted_price
FROM price 
WHERE discounted_price < original_price;

/* Get information on products sold */
Select DISTINCT products.category, SUM(order_items.quantity) AS Total_Sold
From order_items
GROUP BY products.category 
LEFT JOIN products ON order_items.product_id = products.product_id
ORDER BY category DESC;

/* List highest quantity item based on its category */
Select order_items.quantity, products.product_id, products.category
From order_items
Inner Join products ON order_items.product_id = products.product_id
GROUP BY products.category
ORDER BY order_items.quantity DESC;

/* Show list of entire products */
SELECT DISTINCT products.category 
FROM products;

/* Total spent for users, orders by total spent, then limits query to top 20 */
SELECT total AS total_spent, orders.user_id, users.last_name 
FROM orders LEFT JOIN users ON orders.user_id = users.user_id 
ORDER BY total_spent DESC 
LIMIT 20;

/* Select users based on discount percentage greater than 80% */
SELECT name, percent 
FROM discount 
WHERE percent > 80
ORDER BY percent DESC;

/* Find users in China */
SELECT last_name, first_name, country 
FROM users
WHERE country = 'China'
ORDER BY last_name;