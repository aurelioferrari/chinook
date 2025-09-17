Select COUNT(Company) AS 'Empresa' from customers WHERE Country = 'USA';

Select COUNT(*) AS 'Empresa' from customers WHERE Country = 'USA';

Select Country, COUNT(*) from customers 
GROUP BY Country
HAVING Country = 'USA' OR Country = 'Brazil';

SELECT FirstName, Phone, Country from customers
WHERE Country = 'Canada' OR Country = 'USA'
ORDER BY Country DESC;