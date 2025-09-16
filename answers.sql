--Question1

SELECT OrderID, CustomerName, LTRIM(RTRIM(value)) AS Product
FROM
    ProductDetail CROSS APPLY STRING_SPLIT (Products, ',');
--Question2


SELECT DISTINCT
    OrderID,
    CustomerName
INTO Orders
FROM OrderDetails;


SELECT 
    OrderID,
    Product,
    Quantity
INTO OrderDetails_2NF
FROM OrderDetails;
