select distinct

{{ generate_hash('product_id') }} as product_hk,

product_id,

load_date,

record_source

from {{ ref('stg_product') }}