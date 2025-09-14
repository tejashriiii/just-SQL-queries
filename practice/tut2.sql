-- 1. List all albums along with their artist names.

SELECT Album.Title, Artist.Name
FROM Album
JOIN Artist ON Album.ArtistId = Artist.ArtistId;

-- Display all tracks with their media type names.

SELECT Track.Name AS TrackName, MediaType.Name AS MediaTypeName
FROM Track
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId;

-- 3.Find the customer name and the name of the employee who supports them.

SELECT Customer.FirstName AS CustomerFirstName, Customer.LastName AS CustomerLastName,
       Employee.FirstName AS EmployeeFirstName, Employee.LastName AS EmployeeLastName
FROM Customer
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId;

-- 4.List all invoice IDs with the billing country and customer’s full name.

SELECT Invoice.InvoiceId, Invoice.BillingCountry,
       Customer.FirstName || ' ' || Customer.LastName AS CustomerFullName
FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId;

-- 5. Show track names with their album title and artist name.

SELECT Track.Name AS TrackName, Album.Title AS AlbumTitle, Artist.Name AS ArtistName
FROM Track
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId;