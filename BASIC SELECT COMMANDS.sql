SELECT CustomerId, FirstName AS 'Nome' from customers WHERE Country = "USA";

SELECT InvoiceId, BillingAddress AS 'Endereço', total from invoices WHERE BillingCountry = 'USA';

SELECT sum(Total) AS 'Total' from invoices WHERE BillingCountry = 'USA';

SELECT InvoiceId, total from invoices WHERE CustomerId = 2;

SELECT i.InvoiceId, i.total, c.Email from invoices i 
JOIN customers c 
ON i.CustomerId = c.CustomerId
WHERE i.CustomerId = 2;

SELECT b.name AS 'Band', a.Title from albums a
JOIN artists b
ON a.ArtistId = b.ArtistId
ORDER BY b.name ASC, a.Title ASC;