output "public_ip" {
  value = aws_instance.ec2_public.public_ip
}

output "private_ip" {
  value = aws_instance.ec2_private.private_ip
}

output "private_id"{
  value = aws_instance.ec2_private.id
}

output "public_id"{
  value = aws_instance.ec2_private.id
}