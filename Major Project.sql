CREATE DATABASE RetailSalesDB;
USE RetailSalesDB;
CREATE TABLE RetailSales (
OrderID VARCHAR(20),
OrderDate VARCHAR(30),
CustomerName VARCHAR(100),
Category VARCHAR(100),
Product VARCHAR(100),
Region VARCHAR(50),
City VARCHAR(100),
Quantity VARCHAR(20),
UnitPrice VARCHAR(20),
DiscountPct VARCHAR(20),
Revenue VARCHAR(20),
PaymentMethod VARCHAR(50),
SalesRep VARCHAR(100)
);

SELECT COUNT(*) FROM RetailSales;

SELECT *
FROM RetailSales
WHERE CustomerName IS NULL;

SELECT *
FROM RetailSales
WHERE CustomerName='';

UPDATE RetailSales
SET CustomerName='Unknown'
WHERE CustomerName='';

SELECT
OrderID,
COUNT(*)
FROM RetailSales
GROUP BY OrderID
HAVING COUNT(*)>1;

DELETE t1
FROM RetailSales t1
JOIN RetailSales t2
ON t1.OrderID=t2.OrderID
AND t1.CustomerName=t2.CustomerName
AND t1.Product=t2.Product
AND t1.Region=t2.Region
AND t1.City=t2.City
AND t1.Quantity=t2.Quantity
AND t1.UnitPrice=t2.UnitPrice
AND t1.Revenue=t2.Revenue
AND t1.PaymentMethod=t2.PaymentMethod
AND t1.SalesRep=t2.SalesRep
AND t1.OrderDate=t2.OrderDate
AND t1.DiscountPct=t2.DiscountPct
WHERE t1.id>t2.id;

SELECT OrderID, COUNT(*) AS TotalRecords
FROM RetailSales
GROUP BY OrderID
HAVING COUNT(*) > 1;

SELECT *
FROM RetailSales
WHERE OrderID = 'Replace_With_One_OrderID';

SELECT OrderID, COUNT(*) AS TotalRecords
FROM RetailSales
GROUP BY OrderID
HAVING COUNT(*) > 1;


SELECT
    OrderID,
    OrderDate,
    CustomerName,
    Category,
    Product,
    Region,
    City,
    Quantity,
    UnitPrice,
    DiscountPct,
    Revenue,
    PaymentMethod,
    SalesRep,
    COUNT(*) AS DuplicateCount
FROM RetailSales
GROUP BY
    OrderID,
    OrderDate,
    CustomerName,
    Category,
    Product,
    Region,
    City,
    Quantity,
    UnitPrice,
    DiscountPct,
    Revenue,
    PaymentMethod,
    SalesRep
HAVING COUNT(*) > 1;


ALTER TABLE RetailSales
ADD COLUMN ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST;


DELETE t1
FROM RetailSales t1
INNER JOIN RetailSales t2
ON t1.OrderID = t2.OrderID
AND t1.OrderDate = t2.OrderDate
AND t1.CustomerName = t2.CustomerName
AND t1.Category = t2.Category
AND t1.Product = t2.Product
AND t1.Region = t2.Region
AND t1.City = t2.City
AND t1.Quantity = t2.Quantity
AND t1.UnitPrice = t2.UnitPrice
AND t1.DiscountPct = t2.DiscountPct
AND t1.Revenue = t2.Revenue
AND t1.PaymentMethod = t2.PaymentMethod
AND t1.SalesRep = t2.SalesRep
WHERE t1.ID > t2.ID;

SELECT
    OrderID,
    OrderDate,
    CustomerName,
    Category,
    Product,
    Region,
    City,
    Quantity,
    UnitPrice,
    DiscountPct,
    Revenue,
    PaymentMethod,
    SalesRep,
    COUNT(*) AS DuplicateCount
FROM RetailSales
GROUP BY
    OrderID,
    OrderDate,
    CustomerName,
    Category,
    Product,
    Region,
    City,
    Quantity,
    UnitPrice,
    DiscountPct,
    Revenue,
    PaymentMethod,
    SalesRep
HAVING COUNT(*) > 1;


SET SQL_SAFE_UPDATES = 0;

SET SQL_SAFE_UPDATES = 1;

SELECT t1.*
FROM RetailSales t1
INNER JOIN RetailSales t2
ON t1.OrderID = t2.OrderID
AND t1.OrderDate = t2.OrderDate
AND t1.CustomerName = t2.CustomerName
AND t1.Category = t2.Category
AND t1.Product = t2.Product
AND t1.Region = t2.Region
AND t1.City = t2.City
AND t1.Quantity = t2.Quantity
AND t1.UnitPrice = t2.UnitPrice
AND t1.DiscountPct = t2.DiscountPct
AND t1.Revenue = t2.Revenue
AND t1.PaymentMethod = t2.PaymentMethod
AND t1.SalesRep = t2.SalesRep
WHERE t1.ID > t2.ID;

SET SQL_SAFE_UPDATES = 0;

DELETE t1
FROM RetailSales AS t1
INNER JOIN RetailSales AS t2
ON t1.OrderID = t2.OrderID
AND t1.OrderDate = t2.OrderDate
AND t1.CustomerName = t2.CustomerName
AND t1.Category = t2.Category
AND t1.Product = t2.Product
AND t1.Region = t2.Region
AND t1.City = t2.City
AND t1.Quantity = t2.Quantity
AND t1.UnitPrice = t2.UnitPrice
AND t1.DiscountPct = t2.DiscountPct
AND t1.Revenue = t2.Revenue
AND t1.PaymentMethod = t2.PaymentMethod
AND t1.SalesRep = t2.SalesRep
WHERE t1.ID > t2.ID;

SET SQL_SAFE_UPDATES = 1;


SELECT
    OrderID,
    OrderDate,
    CustomerName,
    Category,
    Product,
    Region,
    City,
    Quantity,
    UnitPrice,
    DiscountPct,
    Revenue,
    PaymentMethod,
    SalesRep,
    COUNT(*) AS DuplicateCount
FROM RetailSales
GROUP BY
    OrderID,
    OrderDate,
    CustomerName,
    Category,
    Product,
    Region,
    City,
    Quantity,
    UnitPrice,
    DiscountPct,
    Revenue,
    PaymentMethod,
    SalesRep
HAVING COUNT(*) > 1;

DESCRIBE RetailSales;

SELECT Quantity
FROM RetailSales
WHERE Quantity REGEXP '[^0-9.]';

SELECT UnitPrice
FROM RetailSales
WHERE UnitPrice REGEXP '[^0-9.]';

SELECT DiscountPct
FROM RetailSales
WHERE DiscountPct REGEXP '[^0-9.]';

SELECT Revenue
FROM RetailSales
WHERE Revenue REGEXP '[^0-9.]';

SELECT DISTINCT OrderDate
FROM RetailSales
LIMIT 20;

SELECT DISTINCT OrderDate
FROM RetailSales
LIMIT 20;

SELECT
    SUM(OrderDate REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$') AS YYYY_MM_DD,
    SUM(OrderDate REGEXP '^[0-9]{2}/[0-9]{2}/[0-9]{4}$') AS Slash_Format,
    SUM(OrderDate REGEXP '^[0-9]{2}-[A-Za-z]{3}-[0-9]{4}$') AS DD_Mon_YYYY
FROM RetailSales;

SELECT COUNT(*)
FROM RetailSales
WHERE OrderDate REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$';

SELECT COUNT(*)
FROM RetailSales
WHERE OrderDate REGEXP '^[0-9]{2}/[0-9]{2}/[0-9]{4}$';

SELECT COUNT(*)
FROM RetailSales
WHERE OrderDate REGEXP '^[0-9]{2}-[A-Za-z]{3}-[0-9]{4}$';


SELECT *
FROM RetailSales
WHERE Quantity NOT REGEXP '^[0-9]+(\\.[0-9]+)?$';

SELECT *
FROM RetailSales
WHERE UnitPrice NOT REGEXP '^[0-9]+(\\.[0-9]+)?$';

SELECT *
FROM RetailSales
WHERE DiscountPct NOT REGEXP '^[0-9]+(\\.[0-9]+)?$';

SELECT *
FROM RetailSales
WHERE Revenue NOT REGEXP '^[0-9]+(\\.[0-9]+)?$';

ALTER TABLE RetailSales
MODIFY COLUMN Quantity DECIMAL(10,2);



SELECT DISTINCT Quantity
FROM RetailSales
WHERE TRIM(Quantity) = ''
   OR TRIM(Quantity) IS NULL
   OR TRIM(Quantity) NOT REGEXP '^[0-9]+(\\.[0-9]+)?$';
   
   SELECT DISTINCT CONCAT('[', Quantity, ']') AS QuantityValue
FROM RetailSales;

DESCRIBE RetailSales;

UPDATE RetailSales
SET Quantity = NULL
WHERE TRIM(Quantity) = '';

SET SQL_SAFE_UPDATES = 0;

UPDATE RetailSales
SET Quantity = NULL
WHERE TRIM(Quantity) = '';

SET SQL_SAFE_UPDATES = 1;

DESCRIBE RetailSales;

SELECT DISTINCT CONCAT('[', Quantity, ']') AS QuantityValue
FROM RetailSales
LIMIT 30;

SELECT COUNT(*) AS InvalidQuantity
FROM RetailSales
WHERE Quantity IS NULL
   OR TRIM(Quantity) = ''
   OR TRIM(Quantity) NOT REGEXP '^[0-9]+(\\.[0-9]+)?$';
   
   SELECT COUNT(*) AS InvalidQuantity
FROM RetailSales
WHERE Quantity IS NULL
   OR TRIM(Quantity) = ''
   OR TRIM(Quantity) NOT REGEXP '^[0-9]+(\\.[0-9]+)?$';
   
   UPDATE RetailSales
SET Quantity = NULL
WHERE TRIM(Quantity) = '';

SET SQL_SAFE_UPDATES = 0;

UPDATE RetailSales
SET Quantity = NULL
WHERE TRIM(Quantity) = '';

SET SQL_SAFE_UPDATES = 1;

SELECT ID, Quantity
FROM RetailSales
WHERE Quantity IS NULL
   OR TRIM(Quantity) = ''
   OR TRIM(Quantity) NOT REGEXP '^[0-9]+(\\.[0-9]+)?$';
   
   SELECT COUNT(*) AS NullQuantity
FROM RetailSales
WHERE Quantity IS NULL;

SET SQL_SAFE_UPDATES = 0;

UPDATE RetailSales
SET Quantity = 0
WHERE Quantity IS NULL;

SELECT COUNT(*) AS InvalidQuantity
FROM RetailSales
WHERE Quantity IS NULL
   OR TRIM(Quantity) = ''
   OR TRIM(Quantity) NOT REGEXP '^[0-9]+(\\.[0-9]+)?$';
   
   SELECT DISTINCT Quantity
FROM RetailSales
WHERE Quantity IS NULL
   OR TRIM(Quantity) = ''
   OR TRIM(Quantity) NOT REGEXP '^[0-9]+(\\.[0-9]+)?$';
   
   
   SELECT DISTINCT Quantity
FROM RetailSales
WHERE Quantity IS NULL
   OR TRIM(Quantity) = ''
   OR TRIM(Quantity) NOT REGEXP '^[0-9]+(\\.[0-9]+)?$';
   
   SET SQL_SAFE_UPDATES = 0;
   
   UPDATE RetailSales
SET Quantity = ABS(Quantity)
WHERE Quantity < 0;

SET SQL_SAFE_UPDATES = 1;

SELECT COUNT(*) AS InvalidQuantity
FROM RetailSales
WHERE Quantity IS NULL
   OR TRIM(Quantity) = ''
   OR TRIM(Quantity) NOT REGEXP '^-?[0-9]+(\\.[0-9]+)?$';
   SET SQL_SAFE_UPDATES = 0;
UPDATE RetailSales
SET Quantity = 0
WHERE Quantity IS NULL;
SET SQL_SAFE_UPDATES = 1;
SELECT COUNT(*) AS InvalidQuantity
FROM RetailSales
WHERE Quantity IS NULL
   OR TRIM(Quantity) = ''
   OR TRIM(Quantity) NOT REGEXP '^-?[0-9]+(\\.[0-9]+)?$';
   
   ALTER TABLE RetailSales
MODIFY COLUMN Quantity DECIMAL(10,2);

ALTER TABLE RetailSales
MODIFY COLUMN UnitPrice DECIMAL(10,2);


SELECT COUNT(*) AS InvalidUnitPrice
FROM RetailSales
WHERE UnitPrice IS NULL
   OR TRIM(UnitPrice) = ''
   OR TRIM(UnitPrice) NOT REGEXP '^-?[0-9]+(\\.[0-9]+)?$';
   
   SELECT DISTINCT UnitPrice
FROM RetailSales
WHERE UnitPrice IS NULL
   OR TRIM(UnitPrice) = ''
   OR TRIM(UnitPrice) NOT REGEXP '^-?[0-9]+(\\.[0-9]+)?$';
   
   SET SQL_SAFE_UPDATES = 0;

UPDATE RetailSales
SET UnitPrice = 0
WHERE UnitPrice IS NULL;



ALTER TABLE RetailSales
MODIFY COLUMN UnitPrice DECIMAL(10,2);

SELECT COUNT(*) AS InvalidUnitPrice
FROM RetailSales
WHERE UnitPrice IS NULL
   OR TRIM(UnitPrice) = ''
   OR TRIM(UnitPrice) NOT REGEXP '^-?[0-9]+(\\.[0-9]+)?$';
   
   SELECT DISTINCT UnitPrice
FROM RetailSales
WHERE UnitPrice IS NULL
   OR TRIM(UnitPrice) = ''
   OR TRIM(UnitPrice) NOT REGEXP '^-?[0-9]+(\\.[0-9]+)?$';
   
   SELECT UnitPrice, COUNT(*) AS Total
FROM RetailSales
WHERE UnitPrice IS NULL
   OR TRIM(UnitPrice) = ''
   OR TRIM(UnitPrice) NOT REGEXP '^-?[0-9]+(\\.[0-9]+)?$'
GROUP BY UnitPrice;

ALTER TABLE RetailSales
MODIFY COLUMN UnitPrice DECIMAL(10,2);

SELECT DISTINCT
    CONCAT('[', UnitPrice, ']') AS UnitPriceValue
FROM RetailSales
WHERE UnitPrice IS NULL
   OR TRIM(UnitPrice) = ''
   OR TRIM(UnitPrice) NOT REGEXP '^-?[0-9]+(\\.[0-9]+)?$';
   
   SELECT
    COUNT(*) AS Nulls,
    SUM(TRIM(UnitPrice) = '') AS EmptyStrings
FROM RetailSales;

SELECT DISTINCT UnitPrice
FROM RetailSales
WHERE UnitPrice LIKE '%,%'
   OR UnitPrice LIKE '%$%'
   OR UnitPrice LIKE '%₹%'
   OR UnitPrice LIKE '% %';
   
   SELECT DISTINCT
    IFNULL(UnitPrice,'NULL') AS UnitPriceValue
FROM RetailSales
WHERE UnitPrice IS NULL
   OR TRIM(UnitPrice) = ''
   OR TRIM(UnitPrice) NOT REGEXP '^-?[0-9]+(\\.[0-9]+)?$';