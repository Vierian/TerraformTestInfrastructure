resource "aws_db_instance" "education" {
  identifier             = "education"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "mysql"
  engine_version         = "8.0.20"
  username               = "edu"
  password               = var.db_password
  db_subnet_group_name   = var.sn_rds_id
  vpc_security_group_ids = [var.sg_rds_id]
  parameter_group_name   = var.sn_rds_id
  publicly_accessible    = false
  skip_final_snapshot    = true
  port                   = 5432
}

resource "aws_db_parameter_group" "education" {
  name   = "education"
  family = "mysql8.0"

}