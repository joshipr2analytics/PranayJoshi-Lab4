use `order-directory`;
 -- 7)	Display the Id and Name of the Product ordered
Select p.PRO_ID, p.PRO_NAME 
from `ORDER` o join SUPPLIER_PRICING sp join product p
where ORD_DATE > '2021-10-05' and o.PRICING_ID = sp.PRICING_ID and p.PRO_ID = sp.PRO_ID ;