output "vpc" {
  value = module.vpc
}

output "sg_pub_id" {
  value = aws_security_group.allow_ssh_pub.id
}

output "sg_priv_id" {
  value = aws_security_group.allow_ssh_priv.id
}

output "sg_rds_id"{
  value = aws_security_group.allow_db_access_internal.id
}

output "sn_rds_id"{
  value = aws_db_subnet_group.education.name
}