resource "aws_instance" "roboshop" {
  count = length(var.instances)
  ami           = var.ami_id
  instance_type = "t3.micro"

  tags = merge(local.common_tags,
    {Application = var.application},{Name="${local.Final_Name}_${var.instances[count.index]}"}
  )

  provisioner "local-exec" {
    command = "echo '[web]' > inventory.ini && echo ${self.public_ip} >> inventory.ini"
    interpreter = ["bash", "-c"]

  }
    #Connection block for Terraform to access the instance
  connection {
    type        = "ssh"
    user        = "ec2-user"
    password    = "DevOps321"
    host        = self.public_ip
  }

  # Execute commands on the remote instance
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
      "sudo systemctl start nginx"
    ]
  }

    
  
}
