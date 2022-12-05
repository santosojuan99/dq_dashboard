view: dq_attribute_grouping {
  sql_table_name: `astra-digital-governance.adi_dq_data.dq_attribute_grouping`
    ;;

  dimension: bu_name {
    type: string
    sql: ${TABLE}.bu_name ;;
  }

  dimension: dataset_name {
    type: string
    sql: ${TABLE}.dataset_name ;;
  }

  dimension: dq_attribute {
    type: string
    sql: ${TABLE}.dq_attribute ;;
  }

  dimension: dq_group {
    type: string
    sql: ${TABLE}.dq_group ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  measure: count {
    type: count
    drill_fields: [bu_name, dataset_name, table_name]
  }
}
