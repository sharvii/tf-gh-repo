terraform {
  backend "s3" {
    bucket = "sharvi-tf-state-bucket"
    key    = "dev/tfstate"
    region = "us-west-2"
    encrypt = true
    use_lockfile = true
  }
}

