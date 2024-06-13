resource "aws_instance" "db"{
    count = length(var.instance.names)
    ami = "ami-031d574cddc5bb371"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t2.micro"

    tags = var.instance_names[count.index]
}

            #<resource-type>    <resource-name>
resource "aws_security_group" "allow_ssh"{
    name = "allow_ssh"
    description = "allow ssh access"


    
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

    
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" 
    cidr_blocks      = ["0.0.0.0/0"]
  }


    tags = {
        Name = "allow_ssh"
        CreatedBy = "kiran"
    }
}

