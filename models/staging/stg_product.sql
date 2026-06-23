with source_data as (

select *
from {{ source('raw','product') }}

)

select

product_id,
product_name,
category,

current_timestamp as load_date,

'PRODUCT_SYSTEM' as record_source

from source_data