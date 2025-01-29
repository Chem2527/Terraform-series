provider "aws" {
  region = "us-east-1"
  
}
resource "aws_s3_bucket" "example" {
  bucket = var.bucketname

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_secretsmanager_secret" "example" {
   # arn                            = "arn:aws:secretsmanager:us-east-1:120569600725:secret:secret1-6wGFdn"
    description                    = null
    force_overwrite_replica_secret = false
   # id                             = "arn:aws:secretsmanager:us-east-1:120569600725:secret:secret1-6wGFdn"
    kms_key_id                     = null
    name                           = "secret1"
    name_prefix                    = null
    policy                         = null
    recovery_window_in_days        = 30
    tags                           = {}
    tags_all                       = {}
}

