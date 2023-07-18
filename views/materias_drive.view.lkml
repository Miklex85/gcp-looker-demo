view: materias_drive {
  sql_table_name: `demoai-386200.sae_demo.materias_drive` ;;

  dimension: anio {
    type: number
    sql: ${TABLE}.ANIO ;;
  }
  dimension: calif {
    type: number
    sql: ${TABLE}.CALIF ;;
  }
  dimension: clave_materia {
    type: string
    sql: ${TABLE}.CLAVE_MATERIA ;;
  }
  dimension: id_materia {
    type: string
    sql: ${TABLE}.ID_MATERIA ;;
  }
  dimension: nombre_materia {
    type: string
    sql: ${TABLE}.NOMBRE_MATERIA ;;
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
