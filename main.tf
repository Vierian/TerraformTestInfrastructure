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

module "Monitoring" {
  source    = "./modules/monitoring"
  namespace = var.namespace
  private_id= module.ec2.private_id
  public_id = module.ec2.public_id
  topic_arn = module.Notifications.topic_ARN
}

module "Notifications" {
  source    = "./modules/Notifications"
  namespace = var.namespace
  email = "change@me.com"
}