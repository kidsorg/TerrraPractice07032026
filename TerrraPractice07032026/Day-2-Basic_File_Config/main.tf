resource "aws_instance" "dev" {
    ami = var.ami_id_dev
    instance_type = var.instance_type_dev
    tags = {
        Name = "Dev Instance"
    }
  
}
resource "aws_instance" "test" {
    ami = "ami-0f7a0c94dce9ab456"
    instance_type = "t2.medium"
    tags = {
        Name = "Test Instance"
    }  
}