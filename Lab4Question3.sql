use `order-directory`;
-- 3)   Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.
select c.CUS_GENDER,count(c.CUS_GENDER) 
from customer c join `order` o on c.CUS_ID = o.CUS_ID 
where o.ORD_AMOUNT >2999 
group by c.CUS_GENDER;