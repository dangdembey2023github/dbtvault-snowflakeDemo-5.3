{% set old_etl_relation=ref('v_stg_orders') %} 

{% set dbt_relation=ref('raw_orders') %}  {{ 

audit_helper.compare_relations(
        a_relation=old_etl_relation,
        b_relation=dbt_relation,
        primary_key="order_id"
    ) }}