resource "aws_vpc" "dev_vpc" {
    cidr_block = var.vpc_cidr_dev

    tags = {
        Name = "dev-vpc"
    }
}

resource "aws_subnet" "dev_subnet_1" {
    vpc_id            = aws_vpc.dev_vpc.id
    cidr_block        = var.subnet_1_cidr_dev
    availability_zone = "us-west-2a"

    tags = {
        Name = "dev-subnet-1"
    }
}

resource "aws_subnet" "dev_subnet_2" {
    vpc_id            = aws_vpc.dev_vpc.id
    cidr_block        = var.subnet_2_cidr_dev
    availability_zone = "us-west-2b"

    tags = {
        Name = "dev-subnet-2"
    }
}

locals {
    effective_subnet_id = var.subnet_id_dev != "" ? var.subnet_id_dev : aws_subnet.dev_subnet_1.id
}

resource "aws_instance" "dev" {
    ami           = var.ami_id_dev
    subnet_id     = local.effective_subnet_id
    instance_type = var.instance_type_dev

    tags = {
        Name = "Dev Instance"
    }
}

resource "aws_instance" "test" {
    ami           = var.ami_id_test != "" ? var.ami_id_test : var.ami_id_dev
    subnet_id     = local.effective_subnet_id
    instance_type = var.instance_type_test != "" ? var.instance_type_test : "t2.medium"

    tags = {
        Name = "Test Instance"
    }
}

