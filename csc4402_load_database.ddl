-- Create local database
CREATE DATABASE CSC4402_ProjectDB;

-- Generate tables with attributes

CREATE TABLE csc4402_projectdb.Product_category(
    category_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name varchar(255),
    description text,
    PRIMARY KEY(`category_id`)
);

CREATE TABLE csc4402_projectdb.Inventory(
    inventory_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    quantity INT UNSIGNED,
    PRIMARY KEY(`inventory_id`)
);

CREATE TABLE csc4402_projectdb.Products(
    product_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name varchar(255),
    description text,
    category_id INT UNSIGNED, -- reference PK
    inventory_id INT UNSIGNED,
    price UNSIGNED DECIMAL(6, 2), -- MAX: 9999.99, MIN: 0, non-negative values
    discount_id INT UNSIGNED,
    PRIMARY KEY(`product_id`)
);

CREATE TABLE csc4402_projectdb.Order_details(
    order_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED,
    total DECIMAL(12, 2) UNSIGNED, -- MAX: 9999999999.99, MIN: 0, non-negative values
    product_id INT UNSIGNED,
    item_quantity INT UNSIGNED,
    created_at TIMESTAMP,
    PRIMARY KEY(`order_id`)
);

CREATE TABLE csc4402_projectdb.Discount(
    discount_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name varchar(255),
    description text,
    percent DECIMAL(5, 2) UNSIGNED, -- 5 total places, 100.00% for example
    PRIMARY KEY(`discount_id`)
);

CREATE TABLE csc4402_projectdb.Users(
    user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username varchar(255),
    passwordHash text NOT NULL,
    first_name varchar(255),
    last_name varchar(255),
    created_at TIMESTAMP,
    country varchar(65), -- max country name length = 56 in the real world
    PRIMARY KEY(`user_id`)
);

CREATE TABLE csc4402_projectdb.Shopping_session(
    session_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id ID,
    total DECIMAL(12, 2) UNSIGNED,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    PRIMARY KEY(`session_id`)
);

CREATE TABLE csc4402_projectdb.Cart(
    cart_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    session_id INT UNSIGNED,
    product_id INT UNSIGNED,
    quantity INT UNSIGNED,
    created_at TIMESTAMP,
    PRIMARY KEY(`cart_id`)
);

CREATE TABLE csc4402_projectdb.User_address(
    address_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED,
    address varchar(255),
    city varchar(255),
    country varchar(65),
    phone varchar(15),
    PRIMARY KEY(`address_id`)
);

CREATE TABLE csc4402_projectdb.User_payment(
    payment_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED,
    payment_type varchar(35),
    provider varchar(255),
    annount_no INT UNSIGNED,
    expiry_date DATE,
    PRIMARY KEY(`payment_id`)
);