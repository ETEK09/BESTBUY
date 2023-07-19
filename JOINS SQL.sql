/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
select P.Name as ProductName, 
C.Name as CategoryName
FROM products as P
INNER join categories AS C
ON C.CategoryID = P.CategoryID
WHERE C.Name = "Computers";

select products.Name, categories.Name
FROM products
INNER JOIN categories on categories.CategoryID = products.CategoryID
WHERE categories.Name = "Computers";

select * from products;
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
select products.Name as "Product Name", products.Price as "Product Price", reviews.Rating
FROM products
INNER JOIN reviews ON reviews.ProductID = products.ProductID
WHERE reviews.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select e.FirstName, e.LastName, sum(s.Quantity) AS Total
From sales AS s
INNER join employees AS e ON e.EmployeeID = s.EmployeeID
group by e.EmployeeID
ORDER BY TOTAL DESC
LIMIT 2;

select * from sales
where EmployeeID = 33809;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name as 'Department Name', c.Name as 'Category Name' FROM departments as d
INNER JOIN	categories as c ON c.Name = 'Games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 SELECT p.Name, Sum(s.Quantity) as 'Total Sold', Sum(s.Quantity * s.PricePerUnit) as 'Total Price'
 FROM products as p
 INNER JOIN sales as s on s.ProductID = p.ProductID
 where p.ProductID = 97;
 
 select * from sales where ProductID = 97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select p.Name, r.Reviewer, r.Rating, r.Comment
FROM products as p
INNER JOIN reviews as r On r.ProductID = p.ProductID
Where p.ProductID = 857 AND r.Rating = 1;


-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */

SELECT employees.EmployeeID, employees.FirstName, employees.LastName, products.Name, SUM(s.Quauntity) as TotalSold
from Sales as s
inner JOIN employees as e on e.EmployeeID = s.EmployeeID
Inner Join products as p on p.ProductID = s.ProductID
group by e.EmployeeID, p.ProductID
order by e.FirstName;