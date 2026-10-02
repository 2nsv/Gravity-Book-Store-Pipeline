use Gravity_BookStore_DWH

create schema bronze ;
create schema silver ; 
create schema gold ; 

--------- Bronze Schema ---------

create table bronze.Author_Book (
AuthorID VARCHAR (100) , 
BookID VARCHAR (100)
)

Create Table bronze.Author (
AuthorID VARCHAR (100) , 
AuthorName VARCHAR (100) 
)

Create Table bronze.Book_Order (
OrderID VARCHAR (100) , 
CustomerID VARCHAR (100) , 
OrderDate VARCHAR (100)
)

create Table bronze.Book (
BookID VARCHAR (100) , 
CategoryID VARCHAR (100) , 
Title VARCHAR (100) , 
ISBN VARCHAR (100) , 
Year VARCHAR (100) ,
Price VARCHAR (100) ,
NoPages VARCHAR (100) ,
BookDescription VARCHAR (500) 
)

create table bronze.Category (
CategoryID VARCHAR (100) , 
CategoryDescription VARCHAR (100)
)

Create Table bronze.Customer (
CustomerID VARCHAR (100) , 
FirstName VARCHAR (100) , 
LastName VARCHAR (100) , 
ZipCode VARCHAR (100) , 
City VARCHAR (100) , 
State VARCHAR (100) 
)

Create Table bronze.Ordering (
OrderID VARCHAR (100) , 
BookID VARCHAR (100) , 
Price VARCHAR (100) ,
Quantity VARCHAR (100)
)

SELECT * FROM bronze.Author       
SELECT * FROM bronze.Author_Book   
SELECT * FROM bronze.Book        
SELECT * FROM bronze.Book_Order   
SELECT * FROM bronze.Category     
SELECT * FROM bronze.Customer     
SELECT * FROM bronze.Ordering     


--------- Silver Schema ---------

create table silver.Author_Book (
AuthorID VARCHAR (100) , 
BookID VARCHAR (100)
)

Create Table silver.Author (
AuthorID VARCHAR (100) , 
AuthorName VARCHAR (100) 
)

Create Table silver.Book_Order (
OrderID VARCHAR (100) , 
CustomerID VARCHAR (100) , 
OrderDate VARCHAR (100)
)

create Table silver.Book (
BookID VARCHAR (100) , 
CategoryID VARCHAR (100) , 
Title VARCHAR (100) , 
ISBN VARCHAR (100) , 
Year VARCHAR (100) ,
Price Float ,
NoPages INT ,
BookDescription VARCHAR (500) 
)

create table silver.Category (
CategoryID VARCHAR (100) , 
CategoryDescription VARCHAR (100)
)

Create Table silver.Customer (
CustomerID VARCHAR (100) , 
FirstName VARCHAR (100) , 
LastName VARCHAR (100) , 
ZipCode VARCHAR (100) , 
City VARCHAR (100) , 
State VARCHAR (100) 
)

Create Table silver.Ordering (
OrderID VARCHAR (100) , 
BookID VARCHAR (100) , 
Price Float ,
Quantity INT
)


SELECT * FROM silver.Author       
SELECT * FROM silver.Author_Book   
SELECT * FROM silver.Book        
SELECT * FROM silver.Book_Order   
SELECT * FROM silver.Category     
SELECT * FROM silver.Customer     
SELECT * FROM silver.Ordering    


--------- Gold Schema ---------

Create Table gold.Sales (
SalesID INT , 
BookID VARCHAR (100) , 
AuthorID VARCHAR (100) , 
Quantity INT , 
Price_x FLOAT , 
Total_Amount FLOAT 
)

Create Table gold.Author (
AuthorID VARCHAR (100) , 
AuthorName VARCHAR (100) 
)

create Table gold.Book (
Title VARCHAR (100) , 
ISBN VARCHAR (100) , 
AuthorName VARCHAR (100) , 
CategoryDescription VARCHAR (100) , 
Price Float ,
Year VARCHAR (100) ,
PriceRange FLOAT 
)


Create Table gold.Customer (
CustomerSegment INT , 
FirstName VARCHAR (100) , 
LastName VARCHAR (100) , 
FullName VARCHAR (100) , 
City VARCHAR (100) , 
State VARCHAR (100) 
)


SELECT * FROM gold.Author       
SELECT * FROM gold.Book              
SELECT * FROM gold.Customer     
SELECT * FROM gold.Sales       
