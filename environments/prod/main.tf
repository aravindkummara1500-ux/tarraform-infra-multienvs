module "vpc" {
  source = "../../modules/vpc"

  name       = "prod-vpc"
  cidr_block = "10.2.0.0/16"

  public_subnets  = ["10.2.1.0/24", "10.2.2.0/24"]
  private_subnets = ["10.2.3.0/24", "10.2.4.0/24"]

  azs = ["eu-west-1a", "eu-west-1b"]
}
