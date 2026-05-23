locals {
  common_tags={
    Name="Dev_Server"
    Project="Roboshop"
    Env="Dev"
  }
}

locals{
    Final_Name = "${var.application}"_"${local.Name}"_"${local.Project}"_"${local.Env}"
}