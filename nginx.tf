resource "docker_network" "appnetwork" {
    name = "appnetwork"
}
resource "docker_container" "nginx1" {
  name  = "nginx1"
  image = "nginx:1.29.1-perl"

  ports {
    internal = 80
    external = 81
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
    external = 90
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
    external = 10
  }

  networks_advanced{
    name = docker_network.appnetwork.name
  }
  networks_advanced{
    name = docker_network.persistencenet.name
  }
}
