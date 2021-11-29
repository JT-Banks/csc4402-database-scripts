SELECT *
FROM Users;

/* Numbers refer to insertion order in respect to foreign keys */

-- 1
INSERT INTO csc4402_projectdb.users
(username, passwordHash, first_name, last_name, created_at, country)
VALUES('Tom', 'password123', 'Tom', 'Cruise', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(),
(),
(),
();

-- 2
INSERT INTO csc4402_projectdb.user_address
(user_id, address, city, country, phone)
VALUES(1, '123 Country Rd.', 'Major City', 'U.S', '555-555-5555');

-- 3
INSERT INTO csc4402_projectdb.user_payment
(user_id, payment_type, provider, account_no, expiry_date)
VALUES(1, 'Debit Card', 'Bank USA', 11112222, '10-12-24');

-- 4
INSERT INTO csc4402_projectdb.shopping_session
(user_id, total, created_at, modified_at)
VALUES(1, 50.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- 5
INSERT INTO csc4402_projectdb.inventory
(quantity)
VALUES(1);

-- 6
INSERT INTO csc4402_projectdb.product_category
(name, description)
VALUES('DVD Player', 'Electronics');

-- 7
INSERT INTO csc4402_projectdb.discount
(name, description, percent)
VALUES('DVD Player', 'Electronics', 0);

-- 8
INSERT INTO csc4402_projectdb.products
(name, description, inventory_id, category_id, discount_id, price)
VALUES('Tom', 'DVD Player', 1, 1, 1, 50.00);

-- 9
INSERT INTO csc4402_projectdb.order_details
(user_id, total, product_id, item_quantity, created_at)
VALUES(1, 50.00, 1, 1, CURRENT_TIMESTAMP);

