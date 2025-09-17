--- faixa que custa mais de 1 dólar
SELECT i.TrackId AS 'Música ID', i.UnitPrice AS 'Preço', c.FirstName AS 'Nome'
from invoice_items i
JOIN invoices j ON i.InvoiceId = j.InvoiceId
JOIN customers c ON j.CustomerId = c.CustomerId
Where UnitPrice > 1;

--- usar HAVING para ver quanto cada cliente que comprou músicas de mais de um dólar gastou no total

SELECT c.FirstName AS 'Nome', SUM(i.UnitPrice) AS 'Total'
from invoice_items i
JOIN invoices j ON i.InvoiceId = j.InvoiceId
JOIN customers c ON j.CustomerId = c.CustomerId
Where UnitPrice > 1
GROUP BY c.FirstName;