resource "aws_security_group" "Roboshop_dev_sg" {
 name        = "Rboshop-developer-sg-tf"
 description = "Allow HTTPS to web server"

ingress {
   description = "HTTPS ingress"
   from_port   = 443
   to_port     = 443
   protocol    = "tcp"
   cidr_blocks = ["0.0.0.0/0"]
 }

egress {
   from_port   = 0
   to_port     = 0
   protocol    = "-1"
   cidr_blocks = ["0.0.0.0/0"]
 }
}