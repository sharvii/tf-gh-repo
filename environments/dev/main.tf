# module "vpc" {
#   source             = "./modules/vpc"
#   vpc_cidr           = "10.0.0.0/16"
#   availability_zones = ["us-west-2a", "us-west-2b"]
#   environment        = "dev"
# }

module "secrets" {
  secret_name = "dev/replicate-secrets"
}