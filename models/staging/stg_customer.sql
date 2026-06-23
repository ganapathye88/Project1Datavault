with source_data as (

select *
from {{ source('raw','customer') }}

)

select

customer_id,
customer_name,
email,

current_timestamp as load_date,

'CUSTOMER_SYSTEM' as record_source

from source_data