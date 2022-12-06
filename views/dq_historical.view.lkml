view: dq_historical {
  sql_table_name: `astra-digital-governance.adi_dq_data.dq_historical`
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

  dimension_group: dq {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.dq_date ;;
  }

  dimension: dq_dimension {
    type: string
    sql: ${TABLE}.dq_dimension ;;
  }

  dimension: dq_score_pct {
    type: number
    sql: ${TABLE}.dq_score_pct ;;
  }

  dimension: row_count {
    type: number
    sql: ${TABLE}.row_count ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  dimension: Key {
    type: string
    sql: concat(${bu_name},"-",${dataset_name},"-",${table_name}) ;;
  }

  dimension: KeyGroup {
    type: string
    sql: concat(${bu_name},"-",${dataset_name},"-",${table_name},"-",${dq_attribute}) ;;
  }

  measure: count {
    type: count
    drill_fields: [bu_name, dataset_name, table_name]
  }
}
