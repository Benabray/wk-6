use salesdb;
-- Question 1 🧑‍💼
-- Write an SQL query to get the firstName, lastName, email, and officeCode of all employees.
-- Use an INNER JOIN to combine the employees table with the offices table using the officeCode column.
select
e.firstName,                     -- select the employee's firstName
e.lastName,                      -- select the employee's lastName
e.email,                         -- select the employee's email
e.officeCode                     -- select the officeCode where the employee works
from
employees e                      -- use employees table and alias it as 'e'
inner join
offices o                        -- join with offices table,alias it as 'o'
on 
e.officeCode=o.officeCode;       -- match rows where officeCode is the same in both tables


-- Question 2 🛍️
-- Write an SQL query to get the productName, productVendor, and productLine from the products table.
-- Use a LEFT JOIN to combine the products table with the productlines table using the productLine column.
select
p.productName,                   -- select product's name
p.productVendor,                 -- select the vendor who supplies the product
p.productLine                    -- select the product line category
from 
products p                       -- use the products table and alias it as 'p'
left join
productlines p1                  -- join with productlines table,alias it as'p1'
on
p.productLine=p1.productLine;    -- match rows where productline is the same in both tables


-- Question 3 📦
-- Write an SQL query to retrieve the orderDate, shippedDate, status, and customerNumber for the first 10 orders.
-- Use a RIGHT JOIN to combine the customers table with the orders table using the customerNumber column.
select
o.orderDate,                     -- select the date the order was placed
o.shippedDate,                   -- select the date the order was shipped
o.status,                        -- select the current status of the order
o.customerNumber                 -- select the customer number who placed the order
from
customers c                      -- use the customers table and alias it as 'c'
right join
orders o                         -- join with orders table,alias it as 'o'
on 
c.customerNumber=o.customerNumber -- match rows where customerNumber is the same in both tables
order by o.orderDate asc          -- sort the result by order date in ascending order
limit 10;                         -- only show the first 10 results
