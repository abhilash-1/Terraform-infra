locals {
  common_tags={
    Name="Dev_Server"
    Project="Roboshop"
    Env="Dev"
  }
}

locals{
    Final_Name = "${var.application}_${local.common_tags.Name}_${local.common_tags.Project}"
}

locals{
    Final_sg_name = "${var.sg_name}_${var.application}_${local.common_tags.Env}"
}