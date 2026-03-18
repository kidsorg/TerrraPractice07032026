resource "aws_vpc" "project_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "project-vpc"
    }
  
}
resource "aws_subnet" "dev_subnet" {
    vpc_id = aws_vpc.project_vpc.id
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "dev-subnet"
    }
  
}
resource "aws_instance" "dev-instance" {
    ami = "ami-02dfbd4ff395f2a1b"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.dev_subnet.id
    tags = {
        Name = "dev-instance"
    }  
}