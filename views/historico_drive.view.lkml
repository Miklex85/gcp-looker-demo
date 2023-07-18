view: historico_drive {
  sql_table_name: `demoai-386200.sae_demo.historico_drive` ;;

  dimension: anio {
    type: number
    sql: ${TABLE}.ANIO ;;
  }
  dimension: carrera {
    type: string
    sql: ${TABLE}.CARRERA ;;
  }
  dimension: estatus {
    type: string
    sql: ${TABLE}.ESTATUS ;;
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
