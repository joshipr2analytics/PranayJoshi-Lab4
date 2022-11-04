use `order-directory`;
-- 4)	Display all the orders along with product name ordered by a customer having Customer_Id=2
select o.ORD_ID,o.ORD_AMOUNT,o.ORD_DATE,o.CUS_ID,o.PRICING_ID,product.PRO_NAME 
from `order` o join SUPPLIER_PRICING sp join Product product 
where CUS_ID=2 and o.PRICING_ID= sp.PRICING_ID and sp.pro_id=product.PRO_ID;