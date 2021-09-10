terraform {
  backend "s3" {
    bucket = "terraform-state-mohius"
    key    = "core/terraform.tfstate"
    region = "us-east-1"
  }
}