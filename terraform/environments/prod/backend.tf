terraform {
  backend "s3" {
    bucket  = "prod-trilha-devops-lucaspantolfo-terraform-state"
    key     = "terraform.tfstate"
    region  = var.aws_region
    encrypt = true
  }
}
