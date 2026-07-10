terraform {
  backend "s3" {
    bucket         = "ashokpalegara-terraform-state"
    key            = "dev/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}