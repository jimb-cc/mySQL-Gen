DROP DATABASE productsDB;
CREATE DATABASE IF NOT EXISTS productsDB;
USE productsDB;

/*==============================================================*/
/* Table: Customer                                              */
/*==============================================================*/
create table Customer (
   Id                   int                  NOT NULL AUTO_INCREMENT,
   FirstName            nvarchar(255)         not null,
   LastName             nvarchar(255)         not null,
   City                 nvarchar(255)         null,
   Country              nvarchar(255)         null,
   Phone                nvarchar(255)         null,
   PRIMARY KEY (Id)
);


/*==============================================================*/
/* Table: OrderItem                                             */
/*==============================================================*/
create table OrderItem (
   Id                   int                  NOT NULL AUTO_INCREMENT,
   OrderId              int                  not null,
   ProductId            int                  not null,
   UnitPrice            decimal(12,2)        not null default 0,
   Quantity             int                  not null default 1,
   PRIMARY KEY (Id)
);


/*==============================================================*/
/* Table: Product                                               */
/*==============================================================*/
create table Product (
   Id                   int                  NOT NULL AUTO_INCREMENT,
   ProductName          nvarchar(255)         not null,
   SupplierId           int                  not null,
   UnitPrice            decimal(12,2)        null default 0,
   Package              nvarchar(255)         null,
   IsDiscontinued       bit                  not null default 0,
   PRIMARY KEY (Id)
);


/*==============================================================*/
/* Table: Supplier                                              */
/*==============================================================*/
create table Supplier (
   Id                   int                  NOT NULL AUTO_INCREMENT,
   CompanyName          nvarchar(255)         not null,
   ContactName          nvarchar(255)         null,
   ContactTitle         nvarchar(255)         null,
   City                 nvarchar(255)         null,
   Country              nvarchar(255)         null,
   Phone                nvarchar(255)         null,
   Fax                  nvarchar(255)         null,
   PRIMARY KEY (Id)
);

/*==============================================================*/
/* Table: Orders                                                */
/*==============================================================*/
create table Orders(
   Id                   int                  NOT NULL AUTO_INCREMENT,
   OrderDate            datetime             not null DEFAULT CURRENT_TIMESTAMP,
   OrderNumber          nvarchar(255)         null,
   CustomerId           int                  not null,
   TotalAmount          decimal(12,2)        null default 0,
   PRIMARY KEY (Id)
);
