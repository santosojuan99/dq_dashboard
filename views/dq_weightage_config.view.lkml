view: dq_weightage_config {
  sql_table_name: `astra-digital-governance.adi_dq_data.dq_weightage_config`
    ;;

  dimension: bu_name {
    type: string
    sql: ${TABLE}.bu_name ;;
  }

  dimension: dataset_name {
    type: string
    sql: ${TABLE}.dataset_name ;;
  }

  dimension: dq_dimension {
    type: string
    sql: ${TABLE}.dq_dimension ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  dimension: weightage_pct {
    type: number
    sql: ${TABLE}.weightage_pct ;;
  }

  measure: count {
    type: count
    drill_fields: [bu_name, dataset_name, table_name]
  }
}
