view: historico_drive {
  sql_table_name: `demoai-386200.sae_demo.historico_drive` ;;
  drill_fields: [alumno_drive.id, alumno_drive.matricula, alumno_drive.nombre, alumno_drive.correo_institucional, periodo, sesion, carrera, estatus]

  dimension: anio {
    type: number
    value_format_name: id
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
  dimension:  carrera_in {
    type: string
    sql: ${TABLE}.CARRERA IN () ;;
  }

  measure: count_alumnos {
    type: count_distinct
    sql: ${people_id} ;;
    filters: [carrera: "AED,DAD,GDD,DFD,GPD,MBDD,MPPD,AFXD,CCNM"]
  }
  measure: count {
    type: count
    drill_fields: [alumno_drive.id, alumno_drive.matricula, alumno_drive.nombre, alumno_drive.correo_institucional, periodo, sesion, carrera, estatus]
  }
}
