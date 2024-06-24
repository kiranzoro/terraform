data "aws_ami" "ami_id" {
    most_recent = true
    owners= ["973714476881"]
    filter {
        name = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }
}

data "aws_vpc" "vpc_id" {
    default = true
}