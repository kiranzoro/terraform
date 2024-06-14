resource "aws_instance" "expense"{
    ami = "ami-031d574cddc5bb371"
    count = length(var.instance_names)
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_names[count.index] == db ? "t3.small" : "t3.micro"

    tags = merge (
      var.common_tags,
      {
        Name = var.instance_names[count.index]
        Module = var.instance_names[count.index]
      }
    )

    }
            #<resource-type>    <resource-name>
resource "aws_security_group" "allow_ssh"{
    name = "allow_ssh"  
    description = "allow ssh access"


    
  ingress {
    from_port        = var.ssh_port
    to_port          = var.ssh_port
    protocol         = var.protocol
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

