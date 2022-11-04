use `order-directory`;

-- 8)  Display customer name and gender whose names start or end with character 'A'.
Select * 
from customer 
where CUS_NAME like 'A%' or CUS_NAME like '%A';
