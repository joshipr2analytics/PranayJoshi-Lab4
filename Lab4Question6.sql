use `order-directory`;
-- 6)	Find the least expensive product from each category and print the table with category id, name, product name and price of the product
SELECT p.CAT_ID,c.CAT_NAME, min(sp.SUPP_PRICE) as MinimumItemPrice 
FROM product p join supplier_pricing sp join Category c 
where p.PRO_ID = sp.PRO_ID and p.CAT_ID=c.CAT_ID GROUP BY CAT_ID;