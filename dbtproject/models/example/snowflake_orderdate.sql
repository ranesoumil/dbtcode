{{ config(materialized='table') }}

select o.o_orderdate, sum(o.o_totalprice) as total_price  from   snowflake_sample_data.tpch_sf1.orders o
group by o.o_orderdate
