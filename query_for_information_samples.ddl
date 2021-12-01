SELECT user_id FROM users as u, orders as o
WHERE u.user_id = o.user_id AND
COUNT(o.order_id) > 1;

SELECT user_id FROM orders
WHERE total > 50;

SELECT address_book.user_id 
FROM address_book INNER JOIN address
WHERE country = 'United States';

SELECT address_book.user_id 
FROM address_book ab INNER JOIN users.user_id
WHERE user_id = users.username;

SELECT address_book.user_id,
FROM address_book ab,
JOIN  ON ab.user_id = user_id;

SELECT order_id, created_at FROM orders
WHERE created_at > '2021-06-18 00:00:00'
GROUP BY created_at;

SELECT user_id FROM orders
WHERE total < 55
ORDER BY total;

SELECT name 
FROM discount 
WHERE percent > 80;

SELECT customer_id, category_id, c_name, cartquantity 
FROM (SELECT * FROM (SELECT * FROM (SELECT customer_id, category_id, count(*) AS cartquantity 
FROM cart NATURAL JOIN availability NATURAL JOIN product NATURAL JOIN customer 
GROUP BY category_id, customer_id) AS one) AS two WHERE (customer_id, cartquantity) in 
(SELECT customer_id, max(cartquantity) AS mostusedcategory FROM (SELECT customer_id, category_id, count(*) 
AS cartquantity FROM cart NATURAL JOIN availability NATURAL JOIN product 
NATURAL JOIN customer GROUP BY category_id, customer_id) AS three 
GROUP BY customer_id)) AS four NATURAL JOIN category  

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
