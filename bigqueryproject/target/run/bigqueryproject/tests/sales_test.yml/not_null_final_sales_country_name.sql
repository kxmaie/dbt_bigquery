
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select country_name
from `sales-anlytics`.`sales_dataset`.`final_sales`
where country_name is null



  
  
      
    ) dbt_internal_test