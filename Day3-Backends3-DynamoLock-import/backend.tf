terraform {
  backend "s3" {
    bucket         	   = "terraform-state-dcube1"
    key              	   = "state/terraform.tfstate"
    region         	   = "us-east-1"
    encrypt        	   = true
    dynamodb_table         = "terraform_state_lock"
  }
}

