
variable instance_names {
    type = map
    default = {
        db = "t3.small"
        frontend = "t3.micro"
        backend = "t3.micro"
    }
}
variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Terraform = "true"
    }

}

variable "zone_id" {
    type = string
    default= "Z09483833FHRDIS9G69I"
}

variable "domain_name" {
    type = string
    default = "phonestand.in"

}