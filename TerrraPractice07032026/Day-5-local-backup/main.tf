resource "aws_vpc" "dev_vpc" {
  cidr_block = "192.0.0.0/16"
   tags = {
    Name = "dev-vpc"
   }
}

resource "aws_subnet" "dev_subnet" {
  vpc_id = aws_vpc.dev_vpc.id
  cidr_block = "192.0.0.0/24"
  tags ={
    Name = "dev-subnet"
  }
}

resource "aws_instance" "dev_instance" {
  ami = "ami-02dfbd4ff395f2a1b"
  instance_type = "t2.micro"
  tags = {
    Name = "dev-instance"
  }
  subnet_id = aws_subnet.dev_subnet.id
}