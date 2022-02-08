
    select 
        id as customer_id,
        first_name,
        last_name,
        to_json(first_name) 

    from raw.jaffle_shop.customers
    limit 3

