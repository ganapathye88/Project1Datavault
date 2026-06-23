select

md5(customer_id) as customer_hk,

customer_name,
email,

md5(customer_name || email) as hash_diff,

load_date,

record_source

from {{ ref('stg_customer') }}