 --stg_payments model and sums the amount of successful payments. (Remember to use Jinja in this rather than the raw table name)
 with orders as (
    select * from {{ ref('v_stg_orders')}}
)
select sum(quantity) as total_orders
from orders where extendedprice > 10000;