terraform {
  backend "s3" {
    bucket         = "my-DevSecOps-Bucket-NF"
    key            = "End-to-End-Kubernetes-Three-Tier-DevSecOps-Project/Jenkins-Server-TF/terraform.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true
    dynamodb_table = "terraform-state-lock-dynamo"
  }
}

