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
