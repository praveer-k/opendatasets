select
    product_prices.name,
    product_prices.purchase_date,
    product_prices.a_price,
    exchange_rates_2022.base_currency,
    exchange_rates_2022.target_currency,
    exchange_rates_2022.exchange_rate * product_prices.a_price as converted_price
from exchange_rates.product_prices
left join exchange_rates.exchange_rates_2022
on product_prices.purchase_date=exchange_rates_2022.date_date 
    and product_prices.currency=exchange_rates_2022.base_currency 