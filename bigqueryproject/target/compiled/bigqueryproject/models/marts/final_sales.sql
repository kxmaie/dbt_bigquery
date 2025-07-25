SELECT
country_name,
product_name,
COUNT(order_id) AS total_amount,
SUM(amount) AS total_revenue,


CASE
WHEN DATE(order_date) >= DATE_SUB(CURRENT_DATE(),INTERVAL 3 MONTH) THEN 'recent'
ELSE 'historical'
END AS partition_group
 ,
FROM `sales-anlytics`.`sales_dataset`.`stg_sales`
GROUP BY 1,2,5