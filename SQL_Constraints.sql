/** METHOD 1 - Add Contraint with ALTER Table Statement **/

--- Primary 
ALTER TABLE Customer
ADD CONSTRAINT PK_Customer Primary Key (CustomerID)

ALTER TABLE Customer
ALTER COLUMN CustomerID int not null

/** UNIQUE KEY **/

ALTER TABLE Customer
ADD UNIQUE (FirstName) 

/** FOREIGN KEYS **/

ALTER TABLE Customer
ADD ProductID int not null

/** Change ProductID to Primary Key by using two steps as below: **/

ALTER TABLE Product
ALTER COLUMN ProductID int not null

ALTER TABLE Product
ADD CONSTRAINT PK_Product Primary Key (ProductID)

/** We have a Primary Key on the Product Table, so we can make this ProductID in the Customer Table as a Foreign Key referencin Primary Key PK_Product **/

ALTER TABLE Customer
ADD CONSTRAINT FK_Customer_Product FOREIGN KEY (ProductID) REFERENCES Product (ProductID)

/** METHOD 2 - Create Table and Constrainst at the same time **/

DROP TABLE Product  ---We need to drop Foreign Key first

ALTER TABLE Customer
DROP CONSTRAINT FK_Customer_Product  ----Drop PK

DROP TABLE Customer

---Create Table and Constrainst---

CREATE TABLE Customer 
( 
	CustomerID int Primary Key,
	ProductID int Unique,
	FirstName Varchar(50) NOT NULL,
	MiddleName Varchar(50) NULL,
	LastName Varchar(100) NOT NULL,
	PhoneNumber Varchar(20) NOT NULL DEFAULT '000-000-0000'
)

DROP TABLE Customer --- Drop the Table to specify the names of the keys---

/** Create again the Table so we can specify the name of the Keys **/

CREATE TABLE Customer 
( 
	CustomerID int CONSTRAINT PK_Customer Primary Key,
	ProductID int CONSTRAINT UQ_Cust_Prod Unique,
	FirstName Varchar(50) NOT NULL,
	MiddleName Varchar(50) NULL,
	LastName Varchar(100) NOT NULL,
	PhoneNumber Varchar(20) NOT NULL DEFAULT '000-000-0000'
)

/** Let's insert data into the Customer Table **/

INSERT INTO Customer ( CustomerID,ProductID,FirstName,LastName)
VALUES( 1,1, 'Angelina', 'Frinpong')


SELECT * FROM Customer

/** METHOD 3 - Create Table and Constrainst at the same time, but seperate those from each other **/

CREATE TABLE Product (
	[ProductID] int constraint PK_Product Primary Key,
	[ProductName] [varchar](50) NULL,
	[ProductNumber] [varchar](50) NULL,
	[ProductDescription] [varchar](150) NULL,
	[New_Used_Flag] int Default 0


) 

CREATE TABLE Customer 
( 
	CustomerID int NOT NULL,
	ProductID int NOT NULL,
	FirstName Varchar(50) NOT NULL,
	MiddleName Varchar(50) NULL,
	LastName Varchar(100) NOT NULL,
	PhoneNumber Varchar(20) NOT NULL DEFAULT '000-000-0000'

	CONSTRAINT PK_Customer Primary Key (CustomerID),
	Constraint FK_Customer_Product FOREIGN KEY (ProductID) REFERENCES Product (ProductID)
)

/** CHECK Constraints **/

ALTER TABLE Product
Add Constraint CK_Product CHECK ((ProductID) < 10)

/** We can test the constraint that we added with a limit under 10 as below, to see that 11 will not work **/

INSERT INTO Product ( ProductID,ProductName)
VALUES ( 9,'Bicycle')


/** END **/