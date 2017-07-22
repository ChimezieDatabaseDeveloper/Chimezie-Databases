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
	AddressType nvarchar(80)
	);

	CREATE TABLE Address (
	AddressID int primary key not null,
	AddressLine1 nvarchar(80),
	AddressLine2 nvarchar(80),
	City varchar(40),
	StateProvince varchar(80),
	CountyRegion varchar(50),
	PostalCode varchar(40)
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
	Name varchar(80),
	Color varchar(30),
	ListPrice decimal(5,3),
	Size decimal(5,3),
	Weight decimal(5,3),
	ProductModelID int,
	ProductCategoryID int
	);

	CREATE TABLE ProductModel (
	ProductModelID int primary key not null,
	Name varchar(80)
	);

	CREATE TABLE ProductModelProductDescription(
	ProductModelID int primary key not null,
	ProductDescriptionID int,
	Culture varchar(80)
	);

	CREATE TABLE ProductDescription (
	ProductDescriptionID int primary key not null,
	Description varchar(100)
	);
