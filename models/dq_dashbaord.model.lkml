connection: "bq_connector_for_adi"

# include all the views
include: "/views/**/*.view"

datagroup: dq_dashbaord_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dq_dashbaord_default_datagroup

explore: dq_historical {
  join: dq_attribute_grouping {
    type: left_outer
    sql_on: ${dq_historical.KeyGroup}=${dq_attribute_grouping.KeyGroup} ;;
    relationship: many_to_one
  }
}
explore: dq_historical_avg {}
explore: dq_weightage_config {}
explore: dqi_historical {}
