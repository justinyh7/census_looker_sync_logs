- dashboard: sync_history
  title: Sync History
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 5fchjqWWAIeUEJE7YOFGN1
  elements:
  - title: Total Number of Syncs
    name: Total Number of Syncs
    model: sync_logs
    explore: sync_logs
    type: single_value
    fields: [sync_logs.count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      " Census Logged At Date": sync_logs._census_logged_at_date
    row: 0
    col: 4
    width: 5
    height: 2
  - name: <img src="https://image4owlercom/logo/census_owler_20211117_171057_originalpng"
      height="50"/>
    type: text
    title_text: <img src="https://image4.owler.com/logo/census_owler_20211117_171057_original.png"
      height="50"/>
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 4
    height: 2
  - title: Syncs Over Time
    name: Syncs Over Time
    model: sync_logs
    explore: sync_logs
    type: looker_line
    fields: [sync_logs._census_logged_at_date, sync_logs.count, sync_logs.percent_rejected]
    fill_fields: [sync_logs._census_logged_at_date]
    filters: {}
    sorts: [sync_logs._census_logged_at_date desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: sync_logs.count, id: sync_logs.count,
            name: Sync Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: sync_logs.percent_rejected, id: sync_logs.percent_rejected,
            name: Percent Rejected}], showLabels: true, showValues: true, maxValue: 1,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types:
      sync_logs.count: column
    series_colors:
      sync_logs.percent_rejected: "#EA4335"
      sync_logs.rejected_syncs: "#EA4335"
      sync_logs.successful_syncs: "#1A73E8"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      " Census Logged At Date": sync_logs._census_logged_at_date
    row: 2
    col: 0
    width: 14
    height: 9
  - title: Total Number of Rejected Syncs
    name: Total Number of Rejected Syncs
    model: sync_logs
    explore: sync_logs
    type: single_value
    fields: [sync_logs.rejected_syncs]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      " Census Logged At Date": sync_logs._census_logged_at_date
    row: 0
    col: 14
    width: 5
    height: 2
  - title: Total Number of Successful Syncs
    name: Total Number of Successful Syncs
    model: sync_logs
    explore: sync_logs
    type: single_value
    fields: [sync_logs.successful_syncs]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      " Census Logged At Date": sync_logs._census_logged_at_date
    row: 0
    col: 9
    width: 5
    height: 2
  - title: Most Common Rejected Reasons
    name: Most Common Rejected Reasons
    model: sync_logs
    explore: sync_logs
    type: looker_bar
    fields: [sync_logs.count, sync_logs.status_message_category]
    filters:
      sync_logs.status: rejected
    sorts: [sync_logs.count desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: sync_logs.count, id: sync_logs.count,
            name: Sync Count}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      sync_logs.count: "#EA4335"
    x_axis_label_rotation_bar:
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      " Census Logged At Date": sync_logs._census_logged_at_date
    row: 2
    col: 14
    width: 10
    height: 9
  - title: Rejected Syncs
    name: Rejected Syncs
    model: sync_logs
    explore: sync_logs
    type: looker_grid
    fields: [sync_logs.sync_id, sync_logs.log_id, sync_logs.sync_run_id, sync_logs.operation,
      sync_logs.record_identifier, sync_logs._census_logged_at_date, sync_logs.status_message]
    filters:
      sync_logs.status: rejected
    sorts: [sync_logs._census_logged_at_date desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: true
    series_column_widths:
      sync_logs.log_id: 117
    series_types: {}
    defaults_version: 1
    listen:
      " Census Logged At Date": sync_logs._census_logged_at_date
    row: 11
    col: 0
    width: 24
    height: 8
  - title: Percent Rejected
    name: Percent Rejected
    model: sync_logs
    explore: sync_logs
    type: single_value
    fields: [sync_logs.percent_rejected]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      " Census Logged At Date": sync_logs._census_logged_at_date
    row: 0
    col: 19
    width: 5
    height: 2
  filters:
  - name: " Census Logged At Date"
    title: " Census Logged At Date"
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: sync_logs
    explore: sync_logs
    listens_to_filters: []
    field: sync_logs._census_logged_at_date
