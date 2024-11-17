variable "region" {
  type    = string
  default = "eu-central-1"
}

variable "cluster_name" {
  type    = string
  default = "gustavo-cluster-1"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR of the VPC"
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  type        = string
  default     = "eks-vpc"
  description = "The name of the VPC"
}

variable "namespace" {
  type        = string
  default     = "monitoring"
  description = "The namespace to use for Kubernetes resources within the EKS cluster."
}

variable "loki_bucket_name" {
  type    = string
  default = "gustavo-loki-bucket"
}

variable "sa_loki_name" {
  default = "loki-sa"
}