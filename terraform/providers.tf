provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
}

provider "helm" {
  kubernetes {
    host                   = module.eks.cluster_endpoint
    cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
    exec {
      api_version = "client.authentication.k8s.io/v1beta1"
      args        = ["eks", "get-token", "--cluster-name", module.eks.cluster_name]
      command     = "aws"
    }
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Environment     = local.env
      Service         = "eks"
      HashiCorp-Learn = "aws-default-tags"
      Terraform       = true
      Purpose         = "Terraform Workshop"
      Project         = "DevOps"
    }
  }
}
