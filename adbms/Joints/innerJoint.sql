SELECT
    Customers.CustomerName,
    Orders.OrderID,
    Orders.OrderDate
FROM
    Customers
    INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;