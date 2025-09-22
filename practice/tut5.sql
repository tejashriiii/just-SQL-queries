--1.Classify tracks as 'Cheap', 'Moderate', or 'Expensive' based on unit price.
SELECT Track.Name AS TrackName, 
       CASE 
           WHEN Track.UnitPrice < 0.99 THEN 'Cheap'
           WHEN Track.UnitPrice BETWEEN 0.99 AND 1.99 THEN 'Moderate'
           ELSE 'Expensive'
       END AS PriceCategory
FROM Track;

--2.Rank customers by their total purchase amount (highest to lowest).
SELECT Customer.FirstName || ' ' || Customer.LastName AS CustomerFullName, 
       SUM(Invoice.Total) AS TotalPurchaseAmount,
       RANK() OVER (ORDER BY SUM(Invoice.Total) DESC) AS PurchaseRank
FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Customer.CustomerId, Customer.FirstName, Customer.LastName
ORDER BY TotalPurchaseAmount DESC;