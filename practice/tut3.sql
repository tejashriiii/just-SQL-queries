-- GROUP BY and HAVING

-- 1. Count the number of customers in each country.

SELECT Customer.Country, COUNT(*) AS NumberOfCustomers
FROM Customer
GROUP BY Customer.Country;


-- what dows group by do?
-- it groups the results by the specified column(s) so that aggregate functions can be applied to each group.
-- so like simple clustering the results based on the values in the specified column.


-- 2. Show the total number of invoices for each customer.
SELECT Customer.CustomerId, Customer.FirstName || ' ' || Customer.LastName AS CustomerFullName,
       COUNT(Invoice.InvoiceId) AS TotalInvoices
FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Customer.CustomerId, Customer.FirstName, Customer.LastName;



-- 3. Find the total revenue (sum of total) generated from each country.
SELECT Invoice.BillingCountry, SUM(Invoice.Total) AS TotalRevenue
FROM Invoice
GROUP BY Invoice.BillingCountry;


-- 4. Find all genres that have more than 100 tracks.
SELECT Genre.Name AS GenreName, COUNT(Track.TrackId) AS NumberOfTracks
FROM Genre
JOIN Track ON Genre.GenreId = Track.GenreId
GROUP BY Genre.Name
HAVING COUNT(Track.TrackId) > 100;

-- 5. list employees and how many customers each one supports.
SELECT Employee.EmployeeId, Employee.FirstName || ' ' || Employee.LastName AS EmployeeFullName,
       COUNT(Customer.CustomerId) AS NumberOfCustomers
FROM Employee
LEFT JOIN Customer ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY Employee.EmployeeId, Employee.FirstName, Employee.LastName;

