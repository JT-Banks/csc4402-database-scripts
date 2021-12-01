/* Useful scripts to navigate, query, and generally test the database */

DROP DATABASE csc4402_projectdb;

/* Drop specific tables 
NOTE: If using SQLite3, you can ignore the specificty of 'csc4402_projectdb',
instead simply execute: SQLite3 >> use csc4402_projectdb*/

DROP TABLE csc4402_projectdb.Users;

DROP TABLE csc4402_projectdb.Address;

DROP TABLE csc4402_projectdb.Address_Book;

DROP TABLE csc4402_projectdb.Payment;

DROP TABLE csc4402_projectdb.Payment_Book;

DROP TABLE csc4402_projectdb.Discount;

DROP TABLE csc4402_projectdb.Products;

DROP TABLE csc4402_projectdb.Orders;

DROP TABLE csc4402_projectdb.Order_items;

DROP TABLE csc4402_projectdb.Price;

/* Delete data from table */

DELETE FROM csc4402_projectdb.Users;

DELETE FROM csc4402_projectdb.Address;

DELETE FROM csc4402_projectdb.Address_Book;

DELETE FROM csc4402_projectdb.Payment;

DELETE FROM csc4402_projectdb.Payment_Book;

DELETE FROM csc4402_projectdb.Discount;

DELETE FROM csc4402_projectdb.Products;

DELETE FROM csc4402_projectdb.Orders;

DELETE FROM csc4402_projectdb.Order_items;

DELETE FROM csc4402_projectdb.Price;