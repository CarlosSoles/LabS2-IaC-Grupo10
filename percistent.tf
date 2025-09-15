resource "docker_network" "persistenceNet" {
    name = "persistenceNet"
}

resource "docker_container" "redis_conteiner" {
  name  = "redis"
  image = "redis:8.2.1"

  ports {
    internal = 6379
    external = 6380
  }

  networks_advanced{
    name = docker_network.persistenceNet.name
  }
}

resource "docker_container" "PostTeiner_dev" {
  name  = "postgres"
  image = "postgres:13.22-bookworm"

  ports {
    internal = 5432
    external = 1234
  }

  env = ["POSTGRES_PASSWORD=5432"]

  networks_advanced{
    name = docker_network.persistenceNet.name
  }

}
