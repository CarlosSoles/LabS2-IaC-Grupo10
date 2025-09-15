resource "docker_network" "monitornet" {
    name = "monitornet"
}

resource "docker_container" "grafana"{
    name = "grafana"
    image = "grafana/grafana:12.3.0-17718666199-ubuntu"
    ports {
        internal =  3000
        external =  4001
    }

    networks_advanced{
        name = docker_network.monitornet.name
    }
    networks_advanced{
        name = docker_network.appnet.name
    }
}
