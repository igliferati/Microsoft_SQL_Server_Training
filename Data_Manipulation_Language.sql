/** Data Manipulation Language ( DML) **/
/** INSERT STATEMENT **/

Insert into Customer values( 1,'Angelina','S','Jolie',0123456789)

/**If we want to skip some column we can choose to do this way**/

Insert into Customer (CustomerID,FirstName,LastName) values (2,'Mark','Angel')

/** UPDATE STATEMENT **/

Update Customer
Set FirstName = 'Noah'
Where CustomerID = 2

Update Customer
Set FirstName = 'John'
Where LastName = 'Angel'

/** DELETE STATEMENT **/

Delete
from Customer
Where CustomerID= 2


/** TRUNCATE STATEMENT **/

Truncate Table Customer
