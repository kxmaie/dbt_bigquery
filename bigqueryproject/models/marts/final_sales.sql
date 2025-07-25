SELECT
country_name,
product_name,
COUNT(order_id) AS total_amount,
SUM(amount) AS total_revenue,
{{dynamic_partition('order_date','MONTH')}},
FROM {{ref('stg_sales')}}
GROUP BY 1,2,5
