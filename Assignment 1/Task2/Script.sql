CREATE TABLE SalesPerson (
  SalesPersionid INTEGER  NOT NULL  ,
  Name VARCHAR(255)  NULL    ,
PRIMARY KEY(SalesPersionid));



CREATE TABLE SalesPromotion (
  Promotionid INTEGER  NOT NULL  ,
  Name VARCHAR(255)  NULL    ,
PRIMARY KEY(Promotionid));



CREATE TABLE Store (
  Storeid INTEGER  NOT NULL  ,
  Name VARCHAR(255)  NULL  ,
  StoreType VARCHAR(255)  NULL    ,
PRIMARY KEY(Storeid));



CREATE TABLE Products (
  Productid INTEGER  NOT NULL  ,
  TypeCode INTEGER  NULL  ,
  Description VARCHAR(255)  NULL  ,
  TypeDescription VARCHAR(255)  NULL  ,
  Weight INTEGER  NULL  ,
  RetailPrice FLOAT  NULL    ,
PRIMARY KEY(Productid));



CREATE TABLE Cutomers (
  Customerid INTEGER  NOT NULL  ,
  FirstName VARCHAR(255)  NULL  ,
  MiddleInitial VARCHAR(255)  NULL  ,
  LastName VARCHAR(255)  NULL  ,
  Address VARCHAR(255)  NULL  ,
  City VARCHAR(255)  NULL  ,
  State VARCHAR(255)  NULL  ,
  ZipCode VARCHAR(255)  NULL  ,
  NumberOfCarsOwned INTEGER  NULL  ,
  HomeOwnerFlag VARCHAR(255)  NULL  ,
  Married VARCHAR(255)  NULL  ,
  NumberOfChildren INTEGER  NULL    ,
PRIMARY KEY(Customerid));



CREATE TABLE Date (
  Date_ INTEGER  NOT NULL  ,
  Month_ INTEGER  NOT NULL  ,
  Year_ INTEGER  NOT NULL  ,
  Quarter VARCHAR(255)  NULL  ,
  DOW INTEGER  NULL    ,
PRIMARY KEY(Date_, Month_, Year_));



CREATE TABLE FactTable (
  Store_Storeid INTEGER  NOT NULL  ,
  SalesPerson_SalesPersionid INTEGER  NOT NULL  ,
  Products_Productid INTEGER  NOT NULL  ,
  Date_Year_ INTEGER  NOT NULL  ,
  Date_Month_ INTEGER  NOT NULL  ,
  Date_ INTEGER  NOT NULL  ,
  Cutomers_Customerid INTEGER  NOT NULL  ,
  SalesPromotion_Promotionid INTEGER  NOT NULL  ,
  SalesAmount FLOAT  NULL  ,
  DiscountAmount FLOAT  NULL  ,
  UnitSales INTEGER  NULL    ,
PRIMARY KEY(Store_Storeid, SalesPerson_SalesPersionid, Products_Productid, Date_Year_, Date_Month_, Date_, Cutomers_Customerid)  ,
INDEX FactTable_FKIndex1(Store_Storeid)  ,
INDEX FactTable_FKIndex2(SalesPerson_SalesPersionid)  ,
INDEX FactTable_FKIndex3(Products_Productid)  ,
INDEX FactTable_FKIndex4(Date_, Date_Month_, Date_Year_)  ,
INDEX FactTable_FKIndex5(Cutomers_Customerid)  ,
INDEX FactTable_FKIndex6(SalesPromotion_Promotionid),
  FOREIGN KEY(Store_Storeid)
    REFERENCES Store(Storeid)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(SalesPerson_SalesPersionid)
    REFERENCES SalesPerson(SalesPersionid)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Products_Productid)
    REFERENCES Products(Productid)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Date_, Date_Month_, Date_Year_)
    REFERENCES Date(Date_, Month_, Year_)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Cutomers_Customerid)
    REFERENCES Cutomers(Customerid)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(SalesPromotion_Promotionid)
    REFERENCES SalesPromotion(Promotionid)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);




