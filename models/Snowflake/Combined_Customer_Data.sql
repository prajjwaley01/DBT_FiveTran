select customer_id, name, category, product, price
from mydb_casestudy.postgres_casestudy.customer_purchases
union
select customer_id, name, category, product, price_inr_ as price
from mydb_casestudy.one_drive.customer_data_sheet_1