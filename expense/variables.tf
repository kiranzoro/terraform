variable "instance_names" {
    type = list
    default = ["db", "backend", "frontend"]
}

variable "ssh_port" {
    type = number
    default = 22
}

variable "protocol" {
    type=string
    default = "tcp"
}
variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = "true"
    }
}