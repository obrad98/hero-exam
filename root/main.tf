module "hero_ingress_module" {
    source = "../modules/ingress"

v1 = {
  host = "v1.herohealth.com"
  path = "/v1/*"
  service_name = "hero-v1-svc"
  service_port = 443
}

v2 = {
  host = "v2.herohealth.com"
  path = "/v2/*"
  service_name = "hero-b-svc"
  service_port = 443
}

main = {
  host = "main.herohealth.com"
  path = "/*"
  service_name = "hero-c-svc"
  service_port = 8443
}

}