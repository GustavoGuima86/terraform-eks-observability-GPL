module "vpc" {
  source   = "../../modules/aws-vpc"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
}

module "eks" {
  source              = "../../modules/aws-eks"
  cluster_name        = var.cluster_name
  vpc_id              = module.vpc.vpc_id
  vpc_intra_subnets   = module.vpc.intra_subnets
  vpc_private_subnets = module.vpc.private_subnets
  region              = var.region
}

module "observability" {
  source                             = "../../modules/observability"
  loki_bucket_name                   = var.loki_bucket_name
  namespace                          = var.namespace
  cluster_name                       = module.eks.cluster_name
  sa_loki_name                       = var.sa_loki_name
  region                             = var.region
  oidc_id                            = module.eks.oidc_id
  eks_oidc_provider_arn              = module.eks.eks_oidc_provider_arn
  cluster_certificate_authority_data = module.eks.cluster_certificate_authority_data
  cluster_endpoint                   = module.eks.cluster_endpoint
}