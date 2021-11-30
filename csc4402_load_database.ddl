/* Create local database */
CREATE DATABASE CSC4402_ProjectDB;

/* Generate tables with attributes */
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

CREATE TABLE csc4402_projectdb.Address(
    address_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    address varchar(255),
    city varchar(255),
    country varchar(65),
    phone varchar(15),
    FOREIGN KEY(user_id) REFERENCES Users(user_id),
    PRIMARY KEY(`address_id`)
);

CREATE TABLE csc4402_projectdb.Address_Book(
    user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    address_id INT UNSIGNED NOT NULL,
    FOREIGN KEY(user_id) REFERENCES Users(user_id),
    PRIMARY KEY(`user_id`)
);

CREATE TABLE csc4402_projectdb.Payment(
    payment_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    payment_type varchar(255,
    provider varchar(255),
    account_no BIGINT UNSIGNED,
    expiry_date DATE,
    FOREIGN KEY(user_id) REFERENCES Users(user_id),
    PRIMARY KEY(`payment_id`)
);

CREATE TABLE csc4402_projectdb.Payment_Book(
    user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    payment_id INT UNSIGNED NOT NULL,
    FOREIGN KEY(user_id) REFERENCES Users(user_id),
    PRIMARY KEY(`user_id`)
);

CREATE TABLE csc4402_projectdb.Discount(
    discount_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name varchar(255),
    description text,
    percent DECIMAL(5, 2) UNSIGNED, -- 5 total places, 100.00% for example
    PRIMARY KEY(`discount_id`)
);

CREATE TABLE csc4402_projectdb.Products(
    product_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name varchar(255),
    description text,
    store_quantity INT UNSIGNED NOT NULL,
    category INT UNSIGNED NOT NULL,
    discount_id INT UNSIGNED NULL,
    price DECIMAL(6, 2) UNSIGNED, -- MAX: 9999.99, MIN: 0, non-negative VALUES
    FOREIGN KEY(discount_id) REFERENCES Discount(discount_id),
    PRIMARY KEY(`product_id`)
);
CREATE TABLE csc4402_projectdb.Orders(
    order_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    total DECIMAL(12, 2) UNSIGNED, -- MAX: 9999999999.99, MIN: 0, non-negative values
    created_at TIMESTAMP,
    FOREIGN KEY(user_id) REFERENCES Users(user_id),
    PRIMARY KEY(`order_id`)
);

CREATE TABLE csc4402_projectdb.Order_items(
    order_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    product_id INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED,
    FOREIGN KEY(product_id) REFERENCES Products(product_id),
    FOREIGN KEY(order_id) REFERENCES Orders(order_id),
    PRIMARY KEY(`order_id`)
);

CREATE TABLE csc4402_projectdb.Price(
    product_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    original_price DECIMAL(12, 2) UNSIGNED,
    discount_id INT UNSIGNED,
    discounted_price DECIMAL(12, 2) UNSIGNED,
    FOREIGN KEY(discount_id) REFERENCES Discount(discount_id),
    PRIMARY KEY(`product_id`)
);