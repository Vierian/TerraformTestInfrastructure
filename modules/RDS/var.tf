variable "namespace" {
  type = string
}

variable "vpc" {
  type = any
}

variable "sg_rds_id" {
  type = any
}

variable "sg_priv_id" {
  type = any
}

variable "sn_rds_id"{
  type=any
}

variable "db_password" {
  description = "RDS root user password"
  sensitive   = true
  default = "test1234"
}