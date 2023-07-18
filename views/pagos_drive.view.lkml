view: pagos_drive {
  sql_table_name: `demoai-386200.sae_demo.pagos_drive` ;;
  drill_fields: [people_id, alumnos_drive.matricula, alumnos_drive.nombre, periodo, sesion, entry_date, amount, paid_amount, balance_amount]

  dimension: amount {
    type: number
    value_format_name: usd
    sql: ${TABLE}.AMOUNT ;;
  }
  dimension: anio {
    type: number
    value_format_name: id
    sql: ${TABLE}.ANI0 ;;
  }
  dimension: balance_amount {
    type: number
    value_format_name: usd
    sql: ${TABLE}.BALANCE_AMOUNT ;;
  }
  dimension: charge_credit_code {
    type: string
    sql: ${TABLE}.CHARGE_CREDIT_CODE ;;
  }
  dimension: crg_crd_desc {
    type: string
    sql: ${TABLE}.CRG_CRD_DESC ;;
  }
  dimension_group: entry {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    convert_tz: no
    datatype: datetime
    sql: ${TABLE}.ENTRY_DATE ;;
  }
  dimension: paid_amount {
    type: number
    value_format_name: usd
    sql: ${TABLE}.PAID_AMOUNT ;;
  }
  dimension: people_id {
    type: number
    sql: ${TABLE}.PEOPLE_ID ;;
  }
  dimension: periodo {
    type: string
    sql: ${TABLE}.PERIODO ;;
  }
  dimension: sesion {
    type: string
    sql: ${TABLE}.SESION ;;
  }
  measure: count {
    type: count
    drill_fields: [people_id, alumnos_drive.matricula, alumnos_drive.nombre, periodo, sesion, entry_date, amount, paid_amount, balance_amount]
  }
  measure: sum_amount {
    type: sum
    sql: ${amount} ;;
    value_format_name: usd
    drill_fields: [people_id, alumnos_drive.matricula, alumnos_drive.nombre, periodo, sesion, entry_date, amount, paid_amount, balance_amount]
  }
  measure: sum_paid_amount {
    type: sum
    sql: ${paid_amount} ;;
    value_format_name: usd
    drill_fields: [people_id, alumnos_drive.matricula, alumnos_drive.nombre, periodo, sesion, entry_date, amount, paid_amount, balance_amount]
  }
  measure: sum_balance_amount {
    type: sum
    sql: ${balance_amount} ;;
    value_format_name: usd
    drill_fields: [people_id, alumnos_drive.matricula, alumnos_drive.nombre, periodo, sesion, entry_date, amount, paid_amount, balance_amount]
  }
}
