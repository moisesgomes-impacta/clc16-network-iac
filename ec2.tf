# ########################
# # Security Group Web
# ########################

# resource "aws_security_group" "web_sg" {
#   name        = "web_sg"
#   description = "Permite acesso HTTP"
#   vpc_id      = aws_vpc.clc_vpc.id

#   ingress {
#     description = "HTTP"
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "web_sg_tf"
#   }
# }

# ########################
# # Amazon Linux 2023
# ########################

# data "aws_ami" "amazon_linux" {
#   most_recent = true

#   owners = ["amazon"]

#   filter {
#     name   = "name"
#     values = ["al2023-ami-2023.*-x86_64"]
#   }

#   filter {
#     name   = "architecture"
#     values = ["x86_64"]
#   }

#   filter {
#     name   = "root-device-type"
#     values = ["ebs"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }
# }

# ########################
# # EC2 + Apache
# ########################

# resource "aws_instance" "web_server" {
#   ami                         = data.aws_ami.amazon_linux.id
#   instance_type               = "t2.micro"
#   subnet_id                   = aws_subnet.public_subnet_1a.id
#   vpc_security_group_ids      = [aws_security_group.web_sg.id]
#   associate_public_ip_address = true

#   user_data = <<-EOF
#               #!/bin/bash
#               dnf update -y
#               dnf install -y httpd

#               systemctl enable httpd
#               systemctl start httpd

#               cat <<HTML > /var/www/html/index.html
#               CHEGUEI ATÉ AQUI - MOISES DA SILVA GOMES JUNIOR - CLC 16
#               HTML
#               EOF

#   tags = {
#     Name = "ec2-apache-tf"
#   }
# }