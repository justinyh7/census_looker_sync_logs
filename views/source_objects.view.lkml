
view: source_objects {
  sql_table_name: census.source_objects ;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: model_id {
    type: string
    sql: ${TABLE}."MODEL_ID" ;;
  }

  dimension: business_object_id {
    type: string
    sql: ${TABLE}."BUSINESS_OBJECT_ID" ;;
  }

  dimension: filter_segment_id {
    type: string
    sql: ${TABLE}."FILTER_SEGMENT_ID" ;;
  }

  set: detail {
    fields: [
        id,
  type,
  name,
  model_id,
  business_object_id,
  filter_segment_id
    ]
  }
}
