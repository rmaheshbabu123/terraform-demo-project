module "vpc" {
  source = "../modules/vpc"

  name = "globant-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    otganization= "globant"
    Environment = "dev"
  }
}

# ###########################
# module "eks" {
#   source                = "./modules/eks"

#   public_subnet_az1_id  = module.vpc.public_subnet_az1_id
#   public_subnet_az2_id  = module.vpc.public_subnet_az2_id
#   env                   = var.env
#   type                  = var.type
#   key_name              = var.key_name
#   eks_security_group_id = module.security_groups.eks_security_group_id
#   instance_size         = var.instance_size
#   project_name          = var.project_name
# }