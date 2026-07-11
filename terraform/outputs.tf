output "cluster_name"{
    description = " EKS Cluster Name"
    value       =  module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "EKS cluster API endpoint"
  value       = module.eks.cluster_endpoint
}

output "cluster_certificate_authority" {
  description = "EKS cluster CA certificate (base64)"
  value       = module.eks.cluster_certificate_authority_data
  sensitive   = true
}

output "vpc_id" {
    description  = " vpc_id"
    value        =module.vpc.vpc_id
}

output  "region"{
    description   = "region"
    value         = var.aws_region
}

# Use this command to configure kubectl after apply:
# aws eks update-kubeconfig --region <region> --name <cluster_name>