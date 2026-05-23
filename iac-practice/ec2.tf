resource "aws_instance" "roboshop" {
  count = 3
  ami           = var.ami_id
  instance_type = "t3.micro"

  tags = merge(
    {Application = var.application},{Name=local.Final_Name},local.common_tags
  )
    
  
}
