variable "dev_ami_id" {
    description = "The ami id to use for the ec2 instance creation"
    default = ""
    type = string
}
variable "dev_instance_type" {
    description = "The instance type to use for the ec2 instance creation"
    default = ""
    type = string
}

variable "dev_vpc_cidr" {
    description = "CIDR block for the dev VPC"
    default = ""
    type = string
}

variable "dev_subnet_1_cidr" {
    description = "CIDR block for dev subnet 1"
    default = ""
    type = string
}

variable "dev_subnet_2_cidr" {
    description = "CIDR block for dev subnet 2"
    default = ""
    type = string
}

variable "prod_ami_id" {
    description = "The ami id to use for the ec2 instance creation in prod"
    default = ""
    type = string
}
variable "prod_instance_type" {
    description = "The instance type to use for the ec2 instance creation in prod"
    default = ""
    type = string
}
variable "prod_vpc_cidr" {
    description = "CIDR block for the prod VPC"
    default = ""
    type = string
}
variable "prod_subnet_1_cidr" {
    description = "CIDR block for prod subnet 1"
    default = ""
    type = string
}
variable "prod_subnet_2_cidr" {
    description = "CIDR block for prod subnet 2"
    default = ""
    type = string
}
