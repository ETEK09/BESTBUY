-- find all products
select * from products;

-- find all products that cost $1400
select * FROM products
WHERE price = 1400;

-- find all products that cost $11.99 or $13.99
Select *
From products
WHERE price = "11.99" OR "13.99";

-- find all products that do NOT cost 11.99 - using NOT
SELECT *
FROM Products
WHERE NOT Price = 11.99;

-- find all products and sort them by price from greatest to least
Select *
From Products
ORDER BY Price DESC;


-- find all employees who don't have a middle initial
SELECT *
From employees
WHERE MiddleInitial IS null;

-- find distinct product prices
SELECT distinct price
FROM products;

-- find all employees whose first name starts with the letter ‘j’
SELECT *
FROM employees
WHERE FirstName Like 'j%';


-- find all Macbooks
SELECT *
FROM products
Where Name LIKE '%MACBOOK%';

-- find all products that are on sale
SELECT *
FROM products
Where OnSale = true;
-- find the average price of all products
select *
FROM products
Where OnSale = true;

-- find all Geek Squad employees who don't have a middle initial
select *
FROM employees
where MiddleInitial IS NULL
AND TITLE LIKE '%geek%squad%';
-- find all products from the products table whose stock level is in the range -- of 500 to 1200. Order by Price from least to greatest. Hint: Use the between keyword
select *
FROM products
WHERE StockLevel
BETWEEN 500 and 1200
ORDER BY PRICE asc;

