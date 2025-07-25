

  create or replace view `sales-anlytics`.`sales_dataset`.`stg_sales`
  OPTIONS()
  as 

SELECT 
order_id,
product_name,
amount,
country_name,
order_date,
discount,


CASE
WHEN DATE(order_date) >= DATE_SUB(CURRENT_DATE(),INTERVAL 3 MONTH) THEN 'recent'
ELSE 'historical'
END AS partition_group
 
FROM `sales-anlytics.sales_dataset.raw_sales`;

