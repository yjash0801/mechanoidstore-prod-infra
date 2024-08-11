variable "project_name" {
    default = "mechanoidstore"
}

variable "environment" {
    default = "prod"
}

variable "common_tags" {
    default = {
        Name = "mechanoidstore"
        Environment = "prod"
        Terraform = "true"
    }
}

variable "t3-micro" {
    default = "t3.micro"
}

variable "t2-micro" {
    default = "t2.micro"
}