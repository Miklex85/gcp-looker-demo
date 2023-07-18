view: cargos_drive {
  sql_table_name: `demoai-386200.sae_demo.cargos_drive` ;;

  dimension: anio {
    type: number
    sql: ${TABLE}.ANIO ;;
  }
  dimension: cantidad {
    type: number
    sql: ${TABLE}.CANTIDAD ;;
  }
  dimension: cantidad_pagada {
    type: number
    sql: ${TABLE}.CANTIDAD_PAGADA ;;
  }
  dimension: charge_credit_code {
    type: string
    sql: ${TABLE}.CHARGE_CREDIT_CODE ;;
  }
  dimension: charge_credit_type {
    type: string
    sql: ${TABLE}.CHARGE_CREDIT_TYPE ;;
  }
  dimension: crg_crd_desc {
    type: string
    sql: ${TABLE}.CRG_CRD_DESC ;;
  }
  dimension_group: fecha_captura {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.FECHA_CAPTURA ;;
  }
  dimension_group: fecha_limite {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.FECHA_LIMITE ;;
  }
  dimension: people_id {
    type: number
    sql: ${TABLE}.PEOPLE_ID ;;
  }
  dimension: periodo {
    type: string
    sql: ${TABLE}.PERIODO ;;
  }
  dimension: saldo {
    type: number
    sql: ${TABLE}.SALDO ;;
  }
  dimension: sesion {
    type: string
    sql: ${TABLE}.SESION ;;
  }
  measure: count {
    type: count
  }
}
