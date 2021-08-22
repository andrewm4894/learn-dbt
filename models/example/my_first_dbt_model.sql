
{{
  config(
    schema=generate_schema_name('dev'),
    materialized="table",
  )
}}

with source_data as (

    select 1 as id, {{ var('run_date') }} as run_date
    union all
    select null as id, {{ var('run_date') }} as run_date

)

select *
from source_data
