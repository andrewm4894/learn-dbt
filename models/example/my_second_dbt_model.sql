{{
  config(
    schema=generate_schema_name('dev'),
    materialized="view",
  )
}}

select *
from {{ ref('my_first_dbt_model') }}
where id = 1
