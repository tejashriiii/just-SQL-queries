-- 1. Find the names of customers who have made more than 1 invoice.
SELECT Customer.FirstName || ' ' || Customer.LastName AS CustomerFullName, COUNT(Invoice.InvoiceId) AS NumberOfInvoices
FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Customer.CustomerId, Customer.FirstName, Customer.LastName
HAVING COUNT(Invoice.InvoiceId) > 1;

-- 2. List tracks that are in the playlist named “Grunge”.

-- 3.Find customers who are from the same country as 'Luis Goncalves'.

-- 4. Show all albums that have more than 10 tracks.

-- 5. List all customers who have not made any purchase.