variable "vpc_cidr" { description = "CIDR block for VPC"; type = string }
variable "availability_zones" { description = "AZs to use"; type = list(string) }
variable "environment" { description = "Identifier like dev/staging/prod"; type = string }
