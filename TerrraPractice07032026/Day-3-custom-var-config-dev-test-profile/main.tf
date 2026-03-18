resource "aws_vpc" "dev_vpc" {
    provider = aws.devenv
    cidr_block = var.dev_vpc_cidr

    tags = {
        Name = "dev-vpc"
    }
}

resource "aws_subnet" "dev_subnet_1" {
    provider = aws.devenv
    vpc_id = aws_vpc.dev_vpc.id
    cidr_block = var.dev_subnet_1_cidr
    availability_zone = "us-west-2a"
    # map_public_ip_on_launch = true

    tags = {
        Name = "dev-subnet-1"
    }
}

resource "aws_subnet" "dev_subnet_2" {
    provider = aws.devenv
    vpc_id = aws_vpc.dev_vpc.id
    cidr_block = var.dev_subnet_2_cidr
    availability_zone = "us-west-2b"
    # map_public_ip_on_launch = true

    tags = {
        Name = "dev-subnet-2"
    }
}

resource "aws_instance" "dev" {
    ami = var.dev_ami_id 
    instance_type = var.dev_instance_type
    provider = aws.devenv
    subnet_id = aws_subnet.dev_subnet_1.id

    tags = {
        Name = "Dev instance"
    }
}

resource "aws_vpc" "prod_vpc" {
    provider = aws.prodenv
    cidr_block = var.prod_vpc_cidr
    tags = {
        Name = "prod-vpc"
    }
}
resource "aws_subnet" "prod_subnet_1" {
    provider = aws.prodenv
    vpc_id = aws_vpc.prod_vpc.id
    cidr_block = var.prod_subnet_1_cidr
    availability_zone = "us-west-2a"
    tags = {
        Name = "prod-subnet-1"
    }
}
resource "aws_subnet" "prod_subnet_2" {
    provider = aws.prodenv
    vpc_id = aws_vpc.prod_vpc.id
    cidr_block = var.prod_subnet_2_cidr
    availability_zone = "us-west-2b"
    tags = {
        Name = "prod-subnet-2"
    }
}
resource "aws_instance" "prod" {
    ami = var.prod_ami_id
    instance_type = var.prod_instance_type
    provider = aws.prodenv
    subnet_id = aws_subnet.prod_subnet_1.id
    tags = {
        Name = "Prod instance"
    }
}