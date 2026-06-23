select distinct

{{ generate_hash('customer_id') }} as customer_hk,

customer_id,

load_date,

record_source

from {{ ref('stg_customer') }}