view: becas_drive {
  sql_table_name: `demoai-386200.sae_demo.becas_drive` ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.AMOUNT ;;
  }
  dimension: ani0 {
    type: number
    sql: ${TABLE}.ANI0 ;;
  }
  dimension: balance_amount {
    type: number
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
    sql: ${TABLE}.ENTRY_DATE ;;
  }
  dimension: paid_amount {
    type: number
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
  }
}
