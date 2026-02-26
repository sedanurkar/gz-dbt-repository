with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        purchse_price as purchase_price 
        cast(purchase_price AS FLOAT64)

    from source

)

select * from renamed