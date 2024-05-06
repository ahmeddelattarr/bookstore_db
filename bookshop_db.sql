CREATE DATABASE bookshop_DB;
use bookshop_DB ;

CREATE TABLE Authour ( 
AuthourID int primary key ,
Name varchar(255)
);

CREATE TABLE Publisher(
PublisherID int primary key ,
Name varchar(255) ,
website varchar(255)
);

CREATE TABLE Book (
    ISBN VARCHAR(13) PRIMARY KEY,
    Title VARCHAR(255),
    AuthorID INT,
    PublisherID INT,
    Price DECIMAL(10 , 2 ),
    Description TEXT,
    Stock INT,
    Category VARCHAR(100),
    FOREIGN KEY (AuthorID)
        REFERENCES Authour (AuthourID),
    FOREIGN KEY (PublisherID)
        REFERENCES Publisher (PublisherID)
);
 
 CREATE TABLE Customer (
 CustomerID int primary key ,
 Name varchar(255),
 Email varchar(100),
 ShippingAdress varchar(255)
 );
 
 CREATE TABLE Basket (
 BasketID int primary key ,
 CustomerID int,
 BookID varchar(13) ,
 Quantity int ,
 foreign key (CustomerID) references Customer(CustomerID),
 foreign key(BookID) references Book(ISBN)
 );
 
 CREATE TABLE Warehouse (
    WarehouseID INT PRIMARY KEY,
    Location VARCHAR(255),
    BookID VARCHAR(13),
    Stock INT,
    FOREIGN KEY (BookID) REFERENCES Book(ISBN)
);