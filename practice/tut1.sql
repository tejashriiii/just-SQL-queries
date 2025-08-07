-- 1.List the names of all customers.
SELECT * FROM Customer;

-- 2.Show the first 10 tracks ordered by name.
SELECT Name FROM Track ORDER BY Name ASC LIMIT 10;

-- 3. Find all employees who are Sales Support Agents.
SELECT * FROM Employee where Title='Sales Support Agent';

-- 4. Display the names and emails of customers from Canada.
SELECT FirstName, LastName, Email from Customer WHERE Country='Canada';

-- 5. List all tracks that cost more than $1.00.
SELECT * FROM Track WHERE UnitPrice > 1.00;