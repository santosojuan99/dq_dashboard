view: dqi_historical {
  sql_table_name: `astra-digital-governance.adi_dq_data.dqi_historical`
    ;;

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

  dimension: dqi_pct {
    type: number
    sql: ${TABLE}.dqi_pct ;;
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

  measure: AverageDQI {
    type: average
    sql: ${dqi_pct} ;;
  }

  measure: count {
    type: count
    drill_fields: [bu_name, dataset_name, table_name]
  }
}
