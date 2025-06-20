SELECT ID, SALE_PERSON_FNAME, SALE_PERSON_LNAME,
CASE WHEN PRODUCT_NAME ='Cell Phone' THEN 'Mobile' ELSE PRODUCT_NAME END AS PRODUCT_NAME,
ITEMS_SOLD, SOLD_PRICE, ITEMS_SOLD*SOLD_PRICE AS TOTAL_SALES,
CASE WHEN ITEMS_SOLD*SOLD_PRICE >= 3000 THEN 'High' WHEN ITEMS_SOLD*SOLD_PRICE >= 1500 THEN 'Medium' ELSE 'LOW' END AS TOTALSALES_STATUS,
COUNTRY, REGION
FROM MYDB.ONEDRIVE_SCHEMA.TOTAL_SALE
ORDER BY SOLD_PRICE Desc