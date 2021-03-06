-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

    SELECT product.ProductName, category.CategoryName 
    FROM "product"
    JOIN "category" ON product.CategoryId = category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

    SELECT [order].Id, Shipper.CompanyName 
    FROM "order"
    JOIN "Shipper" on [order].ShipVia = Shipper.Id
    WHERE [order].OrderDate < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

    SELECT Product.ProductName, OrderDetail.Quantity
    FROM "Product"
    JOIN "OrderDetail" ON Product.Id = OrderDetail.ProductId
    WHERE OrderDetail.OrderId = 10251
    ORDER BY Product.ProductName;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

    Select distinct(OrderDetail.OrderId) as OrderDetail, Customer.CompanyName, Employee.LastName
    From [Order]
    Join OrderDetail ON OrderDetail.OrderId = [Order].id
    Join Customer on Customer.Id = [Order].CustomerId
    Join Employee on Employee.Id = [Order].EmployeeId;