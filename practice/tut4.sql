-- 1. Find the names of customers who have made more than 1 invoice.
SELECT Customer.FirstName || ' ' || Customer.LastName AS CustomerFullName, COUNT(Invoice.InvoiceId) AS NumberOfInvoices
FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Customer.CustomerId, Customer.FirstName, Customer.LastName
HAVING COUNT(Invoice.InvoiceId) > 1;

-- 2. List tracks that are in the playlist named “Grunge”.
SELECT Track.Name AS TrackName, Playlist.Name AS PlaylistName
FROM Track
JOIN PlaylistTrack ON Track.TrackId = PlaylistTrack.TrackId
JOIN Playlist ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
WHERE Playlist.Name = 'Grunge';

-- 3.Find customers who are from the same country as 'Luis Goncalves'.

-- 4. Show all albums that have more than 10 tracks.
SELECT Album.Title AS AlbumTitle, COUNT(Track.TrackId) AS NumberOfTracks
FROM Album
JOIN Track ON Album.AlbumId = Track.AlbumId
GROUP BY Album.AlbumId, Album.Title
HAVING COUNT(Track.TrackId) > 10;

-- 5. List all customers who have not made any purchase.
SELECT Customer.FirstName || ' ' || Customer.LastName AS CustomerFullName
FROM Customer
LEFT JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
WHERE Invoice.InvoiceId IS NULL;