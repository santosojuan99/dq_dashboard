view: dq_historical_avg {
  sql_table_name: `astra-digital-governance.adi_dq_data.dq_historical_avg`
    ;;

  dimension: avg_dq_score_pct {
    type: number
    sql: ${TABLE}.avg_dq_score_pct ;;
  }

  dimension: bu_name {
    type: string
    sql: ${TABLE}.bu_name ;;
  }

  dimension: dataset_name {
    type: string
    sql: ${TABLE}.dataset_name ;;
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

  dimension: row_count {
    type: number
    sql: ${TABLE}.row_count ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  dimension: weightage_pct {
    type: number
    sql: ${TABLE}.weightage_pct ;;
  }

  dimension: Key {
    type: string
    sql: concat(${bu_name},"-",${dataset_name},"-",${table_name}) ;;
  }

  measure: count {
    type: count
    drill_fields: [bu_name, dataset_name, table_name]
  }

  measure: AverageDQScore{
    type: average
    drill_fields: [avg_dq_score_pct]
  }
}
