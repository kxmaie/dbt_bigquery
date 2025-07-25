
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select country
from `sales-anlytics`.`sales_dataset`.`final_sales`
where country is null



  
  
      
    ) dbt_internal_test