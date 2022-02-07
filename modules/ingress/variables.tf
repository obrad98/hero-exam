variable "v1" {
    type = object({
        host = string
        path = string
        service_name = string
        service_port = number
    })
}

variable "v2" {
    type = object({
        host = string
        path = string
        service_name = string
        service_port = number
    })
}

variable "main" {
    type = object({
        host = string
        path = string
        service_name = string
        service_port = number
    })
}