## Bookshop Database Readme

This file describes the structure of the `bookshop_DB` database designed for managing a bookstore's inventory and customer information.

### Overview

* **Database Name:** bookshop_DB
* **Description:** This database stores information about books, authors, publishers, customers, their shopping baskets, and warehouse stock levels.
* **Database Management System (DBMS):** MySQL

### Data Structure

The database consists of six tables:

* **Author:**
    * Stores information about book authors.
    * Columns:
        * AuthourID (int, primary key): Unique identifier for each author.
        * Name (varchar(255)): Name of the author.
* **Publisher:**
    * Stores information about book publishers.
    * Columns:
        * PublisherID (int, primary key): Unique identifier for each publisher.
        * Name (varchar(255)): Name of the publisher.
        * website (varchar(255)): Website URL of the publisher (optional).
* **Book:**
    * Stores information about books in the bookstore.
    * Columns:
        * ISBN (varchar(13), primary key): International Standard Book Number (unique identifier for each book).
        * Title (varchar(255)): Title of the book.
        * AuthorID (int): Foreign key referencing the AuthourID in the Author table.
        * PublisherID (int): Foreign key referencing the PublisherID in the Publisher table.
        * Price (DECIMAL(10, 2)): Price of the book.
        * Description (TEXT): Detailed description of the book.
        * Stock (int): Current number of books in stock.
        * Category (varchar(100)): Category of the book (e.g., fiction, non-fiction).
* **Customer:**
    * Stores information about customers of the bookstore.
    * Columns:
        * CustomerID (int, primary key): Unique identifier for each customer.
        * Name (varchar(255)): Name of the customer.
        * Email (varchar(100)): Email address of the customer.
        * ShippingAdress (varchar(255)): Shipping address of the customer.
* **Basket:**
    * Stores items currently in a customer's shopping basket.
    * Columns:
        * BasketID (int, primary key): Unique identifier for each basket.
        * CustomerID (int): Foreign key referencing the CustomerID in the Customer table.
        * BookID (varchar(13)): Foreign key referencing the ISBN in the Book table.
        * Quantity (int): Number of copies of the book in the basket.
* **Warehouse:**
    * Stores information about book stock levels in different warehouse locations.
    * Columns:
        * WarehouseID (int, primary key): Unique identifier for each warehouse location.
        * Location (varchar(255)): Name or description of the warehouse location.
        * BookID (varchar(13)): Foreign key referencing the ISBN in the Book table.
        * Stock (int): Number of copies of the book stored in this location.

### Relationships

* The `Book` table has foreign keys referencing the `Author` and `Publisher` tables, establishing a one-to-many relationship between authors/publishers and books.
* The `Basket` table has foreign keys referencing the `Customer` and `Book` tables, allowing customers to add and remove books from their basket.
* The `Warehouse` table has a foreign key referencing the `Book` table, enabling tracking of book stock levels across different locations.

This schema provides a basic structure for managing book inventory, customer information, and their shopping baskets within a bookstore database. 
