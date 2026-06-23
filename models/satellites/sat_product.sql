select

md5(product_id) as product_hk,

product_name,
category,

md5(product_name || category) as hash_diff,

load_date,

record_source

from {{ ref('stg_product') }}