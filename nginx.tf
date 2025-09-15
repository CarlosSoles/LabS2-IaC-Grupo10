resource "docker_network" "appnetwork" {
    name = "appnetwork"
}
resource "docker_container" "nginx1" {
  name  = "nginx1"
  image = "nginx:1.29.1-perl"

  ports {
    internal = 80
    external = var.ngnix_app1_ports_external
  }

  networks_advanced{
    name = docker_network.appnetwork.name
  }
  networks_advanced{
    name = docker_network.persistencenet.name
  }
}

resource "docker_container" "nginx2" {
  name  = "nginx2"
  image = "nginx:1.29.1-perl"

  ports {
    internal = 80
    external = var.ngnix_app2_ports_external
  }

  networks_advanced{
    name = docker_network.appnetwork.name
  }
  networks_advanced{
    name = docker_network.persistencenet.name
  }
}

resource "docker_container" "nginx3" {
  name  = "nginx3"
  image = "nginx:1.29.1-perl"

  ports {
    internal = 80
    external = var.ngnix_app3_ports_external
  }

  networks_advanced{
    name = docker_network.appnetwork.name
  }
  networks_advanced{
    name = docker_network.persistencenet.name
  }
}
