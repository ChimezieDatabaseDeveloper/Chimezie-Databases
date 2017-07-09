CREATE DATABASE Xpoint


CREATE TABLE AW(

	CustomerID int primary key not null,
	FirstName varchar(80) not null,
	MiddleName varchar(80) not null,
	LastName varchar(80) not null,
	CompanyName varchar(100) not null,
	EmailAddress nvarchar(50) not null,

	);

CREATE TABLE CustomerAddress (
	AddressID int primary key not null, 
	CustomerID int not null, 
	AddressLine1 varchar(50) not null, 
	AddressLine2 varchar(50) not null, 
	City varchar(10) not null, 
	StateProvince varchar(10) not null, 
	CountyRegion varchar(10) not null, 
	PostalCode varchar(10) not null
	);
	
CREATE TABLE SalesOrderHeader (
	SalesOrderID int primary key not null,
	RevisionNumber int not null, 
	OrderDate datetime, 
	CustomerID int not null, 
	BillToAddressID int not null,
	ShipToAddressID int not null,
	ShipMethod varchar(50),
	SubTotal decimal, 
	TaxAmt decimal, 
	Freight varchar(25)	
);

CREATE TABLE SalesOrderDetail (
	SalesOrderID int primary key not null,
	SalesOrderDetailID int not null,
	OrderQty int not null,
	ProductID int not null,
	UnitPrice decimal,
	UnitPriceDiscount decimal
	);

CREATE TABLE ProductAW (
	ProductID int primary key not null, 
	Name varchar(50) not null,
	Color varchar(30) not null,
	ListPrice decimal(5,5) not null,
	Size int not null,
	Weight1 decimal(5,3), 
	ProductModelID int not null,
	ProductCategoryID int not null
	);

CREATE TABLE ProductModel (
	ProductModelID int not null,
	Name varchar(50) not null
	);

CREATE TABLE ProductCategory (
	ProductCategoryID int primary key not null,
	ParentProductCategoryID int not null,
	Name varchar(50)
	);

CREATE TABLE ProductModelProductDescription (
	ProductModelID int primary key not null,
	ProductDescriptionID int not null,
	Culture varchar(50)
	);



	 