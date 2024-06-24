<<<<<<< HEAD
output "ami_id" {
    value = data.aws_ami.ami_id.id
}

output "vpc_id" {
    value = data.aws_vpc.vpc_id
=======
output "vpc_info"{
    value=data.aws_vpc.vpc_info
>>>>>>> 2c6e4f2317af14526da93305cf6f3e90f180642b
}