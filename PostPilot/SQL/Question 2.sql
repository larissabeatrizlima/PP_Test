SELECT 
 CustomerId
, DATETIME(InvoiceDate) as InvoiceDate 
, BillingCity
,row_number() over (PARTITION by BillingCity order by InvoiceDate ASC ) as Partition
FROM Invoice
order by 3 asc, 2 asc