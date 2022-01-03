module "networking" {
  source    = "./modules/vpc"
  namespace = var.namespace
}

module "ssh-key" {
  source    = "./modules/ssh-key"
  namespace = var.namespace
}

module "ec2" {
  source     = "./modules/ec2"
  namespace  = var.namespace
  vpc        = module.networking.vpc
  sg_pub_id  = module.networking.sg_pub_id
  sg_priv_id = module.networking.sg_priv_id
  key_name   = module.ssh-key.key_name
}

module "RDS" {
  source    = "./modules/RDS"
  namespace = var.namespace
  vpc       = module.networking.vpc
  sg_rds_id = module.networking.sg_rds_id
  sg_priv_id= module.networking.sg_priv_id
  sn_rds_id = module.networking.sn_rds_id
}