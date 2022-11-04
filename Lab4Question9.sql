use `order-directory`;
-- 9)	Create a stored procedure to display supplier id, name, rating and Type_of_Service. 
-- For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, 
-- If rating >2 print “Average Service” else print Poor Service”.
DROP PROCEDURE IF EXISTS SUPPLIERRATING;
DELIMITER &&
CREATE PROCEDURE SUPPLIERRATING()
BEGIN
SELECT s.SUPP_ID,s.SUPP_NAME ,r.RAT_RATSTARS,
case 
	when r.RAT_RATSTARS = 5 then 'Excellent Service'
	when r.RAT_RATSTARS > 4 then 'Good Service'
    when r.RAT_RATSTARS > 2 then 'Average Service'
    ELSE 'Poor Service'
END AS VERDICT FROM Rating r join supplier s on s.SUPP_ID = r.RAT_ID;
END &&

CALL SUPPLIERRATING()