view: alumnos_drive {
  sql_table_name: `demoai-386200.sae_demo.alumnos_drive` ;;
  drill_fields: [id, matricula, nombre, correo_institucional, celular, ultimo_estatus, ultima_carrera]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }
  dimension: celular {
    type: string
    sql: ${TABLE}.CELULAR ;;
  }
  dimension: correo_institucional {
    type: string
    sql: ${TABLE}.CORREO_INSTITUCIONAL ;;
  }
  dimension: correo_personal {
    type: string
    sql: ${TABLE}.CORREO_PERSONAL ;;
  }
  dimension: matricula {
    type: string
    sql: ${TABLE}.MATRICULA ;;
  }
  dimension: nombre {
    type: string
    sql: ${TABLE}.NOMBRE ;;
  }
  dimension: tel_casa {
    type: string
    sql: ${TABLE}.TEL_CASA ;;
  }
  dimension: ultima_carrera {
    type: string
    sql: ${TABLE}.ULTIMA_CARRERA ;;
  }
  dimension: ultimo_estatus {
    type: string
    sql: ${TABLE}.ULTIMO_ESTATUS ;;
  }
  measure: count {
    type: count
    drill_fields: [id, matricula, nombre, correo_institucional, celular, ultimo_estatus, ultima_carrera]
  }
}
