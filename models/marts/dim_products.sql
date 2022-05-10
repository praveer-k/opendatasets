select 
    Product_ID as name,
    PARSE_DATE('%Y-%m-%d',  Order_Date) as purchase_date,
    Price as a_price,
    currency
from `opendatasets-349618.exchange_rates.product_details`