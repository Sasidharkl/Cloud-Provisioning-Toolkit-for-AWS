provider "aws" {
  region = var.aws_region
  access_key = "ABCDEFGHIJKLM"  # Placeholder access key
  secret_key = "abcdefghijklm"  # Placeholder secret key
}

module "vpc" {
  source = "./modules/vpc"
  project_name = var.project_name
  cidr_block = var.cidr_block
}

module "ec2" {
  source = "./modules/ec2"
  project_name = var.project_name
  vpc_id = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  instance_type = var.instance_type
}

module "s3" {
  source = "./modules/s3"
  project_name = var.project_name
}
