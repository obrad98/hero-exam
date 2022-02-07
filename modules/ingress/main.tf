terraform {
  required_version = ">= 0.12"
}

resource "kubernetes_ingress" "example-ingress" {
    metadata {
        name = "hero-ingress"
    }

    spec {
        backend {
            service_name = var.v1.service_name
            service_port = var.v1.service_port
        }

        rule {
            http {
                path {
                    backend {
                        service_name = var.v1.service_name
                        service_port = var.v1.service_port
                    }

                    path = var.v1.path
                }

                path {
                  backend {
                    service_name = var.v2.service_name
                    service_port = var.v2.service_port
                  }

                  path = var.v2.path
                }

                path {
                  backend {
                    service_name = var.main.service_name
                    service_port = var.main.service_port
                  }

                  path = var.main.path
                }
            }
        }
    }

}