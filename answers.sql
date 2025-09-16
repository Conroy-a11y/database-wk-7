--Question1
-- Transform ProductDetail into 1NF
SELECT OrderID, CustomerName, LTRIM(RTRIM(value)) AS Product
FROM
    ProductDetail CROSS APPLY STRING_SPLIT (Products, ',');