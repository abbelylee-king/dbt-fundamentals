with 

payments as (
    select * from {{ ref('stg_payments') }}
)

select 
  order_id,
  sum(amount) as total_amount
from payments
group by order_id
having total_amount < 0


-- refer to the model
-- run test that is expected to fail to get -ve value
-- detecting for order that total amount is -ve