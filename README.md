# csc4402-database-scripts
Repository for database scripts for CSC 4402 project

Repository contains scripts for:
  - Generate a database via mySQL script(csc4402_load_database.ddl)
  - Insert mock data(csc4402_insert_mock_data.ddl)
  - Useful syntax to quickly edit database, such as;
    - Drop database
    - Drop table or tables
    - Delete data..
## How to use

I recommend Dbeaver as an interface program that syncs up to MySQL. With Dbeaver you have a nice GUI to work with, that allows for quick queries and visualization.

If you choose not to use Dbeaver, the queries, and syntax are identical. MySQL terminal(sqlite3) will work just fine.

For initial database load:
  - Each table must be loaded individually, one at a time 
  - Insertion of data has to happen in the proper sequence
   1. Users 
   2. Address 
   3. Payment 
   4. Payment_book 
   5. Address_book
   6. Orders
   7. Discount
   8. Price 
   9. Products
   10. Order_items 
  
