variable ami_id{
    type = string
    default = "ami-0220d79f3f480ecf5"
}

# variable Name{
#     type = string
#     default = "Developer_server"
# }

# variable Project{
#     type = string
#     default = "Roboshop"
#}

variable application{
    type=string
    default="FO_Report"
}

variable instances{
    type = list 
    default = ["shipping", "cart", "payment"]
}

variable "sg_name"{
    type=string 
    default =  "Roboshop-developer-sg-tf"
}