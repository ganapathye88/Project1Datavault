select distinct

md5(customer_id || product_id) as customer_product_hk,

md5(customer_id) as customer_hk,

md5(product_id) as product_hk,

load_date,

record_source

from {{ ref('stg_order') }}