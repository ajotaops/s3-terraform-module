provider "aws" {
  region = var.region
  profile = var.aws_profile
}

#terraform {
#  backend "s3" {
#    bucket = "bucket"
#    profile = var.aws_profile
#    region = var.region
#    key = "terraform.tfstate"
#  }
#}

module "iam_role" {
    source = "./modules/iam/role"
    role = "test"
    instance_profile = true
    statements = {
      "EC2" = {
        principals = {
          "Service" = ["ec2.amazonaws.com"]
        }
        actions = ["sts:AssumeRole"]
        effect = "Allow"
      },
    }
}

module "bucket_s3_test" {
    source = "./modules/s3"
    
    bucket_name = var.bucket_name
    
    versioning = {
      enabled = true
    }

    public_access_block = {
        block_public_acls       = true
        block_public_policy     = true
        ignore_public_acls      = true
        restrict_public_buckets = true
    }

    statements = {
      "AllowReadOnly" = {
        principals = {
          "AWS" = [module.iam_role.arn]
        }
        actions = ["s3:ListBucket","s3:GetObject"]
        effect = "Allow"
      },
    }
}
