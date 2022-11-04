use `order-directory`;
-- 5)	Display the Supplier details who can supply more than one product.
select s.SUPP_ID, s.SUPP_NAME, s.SUPP_CITY, s.SUPP_PHONE, COUNT(p.SUPP_ID) as Supply
from supplier_pricing p join supplier s on p.SUPP_ID  = s.SUPP_ID
group by s.SUPP_ID order by Supply;