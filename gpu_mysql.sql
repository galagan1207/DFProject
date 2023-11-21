CREATE SCHEMA schema_computerparts;
USE schema_computerparts;

CREATE TABLE schema_computerparts.computer_parts_table(
    PartID INT PRIMARY KEY,
    PartName VARCHAR(100),
    Manufacturer VARCHAR(100),
    PartType VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

LOAD DATA INFILE 'C:\\Users\\galyeg\\Downloads\\project\\All_GPUs.csv'
INTO TABLE schema_computerparts.computer_parts_table
FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n'
IGNORE 1 LINES;
