CREATE TABLE Product (
  Productid INTEGER  NOT NULL  ,
  Name VARCHAR(255)  NULL  ,
  ProductType INTEGER  NULL  ,
  ProductSubType INTEGER  NULL  ,
  RawMaterial VARCHAR(255)  NULL    ,
PRIMARY KEY(Productid));



CREATE TABLE Machine (
  Machineid INTEGER  NOT NULL  ,
  MachineClass VARCHAR(255)  NULL  ,
  MachineType VARCHAR(255)  NULL  ,
  MachineName VARCHAR(255)  NULL  ,
  RawMaterial VARCHAR(255)  NULL  ,
  Plant VARCHAR(255)  NULL  ,
  Country VARCHAR(255)  NULL    ,
PRIMARY KEY(Machineid));



CREATE TABLE Batch (
  Batchid INTEGER  NOT NULL  ,
  StartTime VARCHAR(255)  NULL  ,
  EndTime VARCHAR(255)  NULL    ,
PRIMARY KEY(Batchid));



CREATE TABLE Date (
  Date_ INTEGER  NOT NULL  ,
  Month_ INTEGER  NOT NULL  ,
  Year_ INTEGER  NOT NULL    ,
PRIMARY KEY(Date_, Month_, Year_));



CREATE TABLE FactTable (
  Product_Productid INTEGER  NOT NULL  ,
  Date_Year_ INTEGER  NOT NULL  ,
  Date_Month_ INTEGER  NOT NULL  ,
  Date_ INTEGER  NOT NULL  ,
  Batch_Batchid INTEGER  NOT NULL  ,
  Machine_Machineid INTEGER  NOT NULL  ,
  NumberAccepted INTEGER  NULL  ,
  NumberRejected INTEGER  NULL  ,
  ElapsedTime INTEGER  NULL    ,
PRIMARY KEY(Product_Productid, Date_Year_, Date_Month_, Date_, Batch_Batchid, Machine_Machineid)  ,
INDEX FactTable_FKIndex1(Product_Productid)  ,
INDEX FactTable_FKIndex2(Date_, Date_Month_, Date_Year_)  ,
INDEX FactTable_FKIndex3(Batch_Batchid)  ,
INDEX FactTable_FKIndex4(Machine_Machineid),
  FOREIGN KEY(Product_Productid)
    REFERENCES Product(Productid)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Date_, Date_Month_, Date_Year_)
    REFERENCES Date(Date_, Month_, Year_)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Batch_Batchid)
    REFERENCES Batch(Batchid)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Machine_Machineid)
    REFERENCES Machine(Machineid)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);




