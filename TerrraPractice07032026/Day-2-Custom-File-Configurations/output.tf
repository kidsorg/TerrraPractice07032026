output "public_ip" {
    value = aws_instance.dev.public_ip
}
output "instance_id" {
    value = aws_instance.dev.id
}
output "private_ip" {
    value = aws_instance.dev.private_ip
}

output "availability_zone" {
    value = aws_instance.dev.availability_zone
}