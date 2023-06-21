WITH a_CTE AS 
(SELECT
CustomerId
,FirstName
,LastName
,IFNULL(Company,"No Company") as Company
FROM Customer
)
,b_CTE AS 
(SELECT
CustomerId
,BillingCity
FROM Invoice
)
SELECT 
a.CustomerId
,a.FirstName
,a.LastName
,a.Company
,b.BillingCity
FROM a_CTE a
INNER JOIN 	b_CTE b on a.CustomerId = b.CustomerId 