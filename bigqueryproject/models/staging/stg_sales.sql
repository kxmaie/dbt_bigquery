{{config (materialized='view')}}

SELECT 
order_id,
product_name,
amount,
country_name,
order_date,
discount,
{{dynamic_partition('order_date','MONTH')}}
FROM `sales-anlytics.sales_dataset.raw_sales`

