variable "ami_id_dev" {
     description = "ami id for dev instance"
     default = ""
     type = string
  
}

variable "instance_type_dev" {
        description = "instance type for dev instance"
        default = ""
        type = string
}

variable "ami_id_test" {
     description = "ami id for test instance"
     default = ""
     type = string
  
}

variable "instance_type_test" {
        description = "instance type for test instance"
        default = ""
        type = string
}

variable "subnet_id_dev" {
        description = "subnet for the dev instance"
        default = ""
        type = string
}

variable "vpc_cidr_dev" {
        description = "CIDR block for dev VPC"
        default = "10.50.0.0/16"
        type = string
}

variable "subnet_1_cidr_dev" {
        description = "CIDR block for dev subnet 1"
        default = "10.50.1.0/24"
        type = string
}

variable "subnet_2_cidr_dev" {
        description = "CIDR block for dev subnet 2"
        default = "10.50.2.0/24"
        type = string
}