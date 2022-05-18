view: sync_logs {
  sql_table_name: census.sync_log ;;

  dimension: log_id {
    type: string
    sql: ${TABLE}.log_id ;;
  }

  dimension: sync_id {
    type: string
    sql: ${TABLE}.sync_id ;;
  }

  dimension: sync_run_id {
    type: string
    sql: ${TABLE}.sync_run_id ;;
  }

  dimension: record_identifier {
    type: string
    sql: ${TABLE}.record_identifier ;;
  }

  dimension: record_payload {
    type: string
    sql: ${TABLE}.record_payload ;;
  }

  dimension_group: batch_started_at {
    type: time
    sql: ${TABLE}.batch_started_at ;;
  }

  dimension_group: batch_completed_at {
    type: time
    sql: ${TABLE}.batch_completed_at ;;
  }

  dimension: operation {
    type: string
    sql: ${TABLE}.operation ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_message {
    type: string
    sql: ${TABLE}.status_message ;;
  }

  dimension: status_message_category {
    type: string
    # sql: substring(${status_message},1,regexp_instr(${status_message},':',1,2)-1) ;;
    sql: INITCAP(LEFT(${status_message}, regexp_instr(${status_message},':',1,2)-1)) ;;
  }

  dimension_group: _census_logged_at {
    type: time
    sql: ${TABLE}._census_logged_at ;;
  }

  set: detail {
    fields: [
      log_id,
      sync_id,
      sync_run_id,
      record_identifier,
      record_payload,
      batch_started_at_time,
      batch_completed_at_time,
      operation,
      status,
      status_message,
      _census_logged_at_time
    ]
  }

  measure: count {
    type: count
    label: "Sync Count"
  }

  measure: rejected_syncs {
    type: count
    filters: [status: "rejected"]
  }

  measure: successful_syncs {
    type: count
    filters: [status: "succeeded"]
  }

  measure: percent_rejected {
    type: number
    sql: CAST(${rejected_syncs} AS decimal) / CAST(${count} AS decimal) ;;
    value_format_name: percent_1
  }
}
