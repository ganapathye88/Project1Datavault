with source_data as (

select *
from {{ source('raw','ORDERS') }}

)

select

order_id,
customer_id,
product_id,
order_date,

current_timestamp as load_date,

'ORDER_SYSTEM' as record_source

from source_data