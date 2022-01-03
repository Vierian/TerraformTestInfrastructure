resource "aws_db_instance" "education" {
  identifier             = "education"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  engine_version         = "13.1"
  username               = "edu"
  password               = var.db_password
  db_subnet_group_name   = var.sn_rds_id
  vpc_security_group_ids = [var.sg_rds_id]
  parameter_group_name   = var.sn_rds_id
  publicly_accessible    = false
  skip_final_snapshot    = true
}

resource "aws_db_parameter_group" "education" {
  name   = "education"
  family = "postgres13"

  parameter {
    name  = "log_connections"
    value = "1"
  }
}