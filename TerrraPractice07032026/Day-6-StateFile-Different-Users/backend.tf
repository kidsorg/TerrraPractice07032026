terraform {
  backend "s3" {
    bucket = "dev-create-1"
    key = "test/terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}