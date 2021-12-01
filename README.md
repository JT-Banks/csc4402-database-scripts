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
  
  Step 1: Make a database called ``csc4402_projectdb``(Code via SQLite > ``create database csc4402_projectdb``)
  
  Step 2: Load the necessary tables provided in the file ``csc4402_load_database.dll``, each table must be loaded sequentically
  
  Step 3: Once the tables are loaded, you can now insert the dummy data provided in the ``Mock Data`` folder. Simply open any file and copy the contents, then paste those                 contents to your SQLite terminal, or if like me you're using Dbeaver, simply ``right-click`` your database, then select ``SQL Editor`` >> ``New Script`` paste contents           there, and execute the script (ALT + X).
  
  Step 4: If you wish to test queries provided, simply follow similar steps outlined in step 3, copy and paste the contents from ``query_for_information_samples.ddl``
