module "vpc" {
  # source = "../terraform-vpc-source" # local path to the module
  source                        = "git::https://github.com/devops-practice1986/terraform-vpc-module-source-peer.git?ref=main" # remote path to the module in GitHub
  vpc_cidr                      = var.vpc_cidr
  project_name                  = var.project_name
  environment                   = var.environment
  common_tags                   = var.common_tags
  public_subnet_cidrs           = var.public_subnet_cidrs
  #public_subnet_tags            = var.public_subnet_tags
  private_subnet_cidrs          = var.private_subnet_cidrs
  #private_subnet_tags           = var.private_subnet_tags
  database_private_subnet_cidrs = var.database_private_subnet_cidrs
  #database_private_subnet_tags  = var.database_private_subnet_tags
  is_peering_required           = true
}
