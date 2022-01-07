module mis_redes_1 {
  source = "./modulos/frontend_servers"
  proyecto = "ux_ui"
  rango_cidr_vpc = "192.168.0.0/16"
  rango_cidr_subred = "192.168.95.0/24"
}

module mis_redes_2 {
  source = "./modulos/frontend_servers"
  proyecto = "big_data"
  rango_cidr_vpc = "172.16.0.0/16"
  rango_cidr_subred = "172.16.30.0/24"
}

module mis_redes_3 {
  source = "./modulos/frontend_servers"
  proyecto = "artificial_intelligence"
  rango_cidr_vpc = "10.50.0.0/16"
  rango_cidr_subred = "10.50.70.0/24"
}

module mis_redes_4 {
  source = "./modulos/frontend_servers"
  proyecto = "desarrollo"
  rango_cidr_vpc = "10.60.0.0/16"
  rango_cidr_subred = "10.60.70.0/24"
}




