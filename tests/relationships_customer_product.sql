select *

from {{ ref('link_customer_product') }}

where customer_hk is null
or product_hk is null