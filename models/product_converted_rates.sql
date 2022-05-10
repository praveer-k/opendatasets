select
    products.name,
    products.purchase_date,
    products.a_price,
    rates.base_currency,
    rates.target_currency,
    rates.exchange_rate * products.a_price as converted_price
from opendatasets-349618.exchange_rates.dim_products as products
left join opendatasets-349618.exchange_rates.dim_rates as rates
on products.purchase_date=rates.date_date 
    and products.currency=rates.base_currency 