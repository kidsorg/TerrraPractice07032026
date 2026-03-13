terraform {
    backend "s3" {
        bucket = "prod-terra-state-1"
        key = "prod-d5/terraform.tfstate"
        region = "us-east-1"
      
    }
}
