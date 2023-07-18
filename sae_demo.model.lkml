connection: "sae"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: sae_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sae_demo_default_datagroup

explore: alumnos_drive {
  join: materias_drive {
    sql_on: ${alumnos_drive.id} = ${materias_drive.people_id} ;;
    relationship: one_to_many
  }
  join: historico_drive {
    sql_on: ${alumnos_drive.id} = ${historico_drive.people_id} ;;
    relationship: one_to_many
  }
  join: cargos_drive {
    sql_on: ${alumnos_drive.id} = ${cargos_drive.people_id} ;;
    relationship: one_to_many
  }
  join: pagos_drive {
    sql_on: ${alumnos_drive.id} = ${pagos_drive.people_id} ;;
    relationship: one_to_many
  }
  join: becas_drive {
    sql_on: ${alumnos_drive.id} = ${becas_drive.people_id} ;;
    relationship: one_to_many
  }
}
