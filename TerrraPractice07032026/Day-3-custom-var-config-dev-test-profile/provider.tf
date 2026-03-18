provider "aws" {
    region = "us-west-2"
    profile = "default"
}

provider "aws" {
    region = "us-west-2"
    alias = "devenv"
    profile = "dev"
}
provider "aws" {
    region = "us-west-2"
    alias = "prodenv"
    profile = "prod"
}