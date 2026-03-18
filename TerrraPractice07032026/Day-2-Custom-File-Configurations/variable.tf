variable "ami_id" {
    description = "The ami id to use for the ec2 instance creation"
    default = ""
    type = string
}

variable "instance_type" {
    description = "The instance type to use for the ec2 instance creation"
    default = ""
    type = string
}
