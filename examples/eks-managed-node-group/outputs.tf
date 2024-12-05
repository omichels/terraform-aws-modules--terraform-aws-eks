
################################################################################
# Cluster
################################################################################

output "cluster_arn" {
  description = "The Amazon Resource Name (ARN) of the cluster"
  value       = module.eks_al2.cluster_name 

#  depends_on = [
#    aws_eks_access_entry.this,
#    aws_eks_access_policy_association.this,
#  ]
}

output "cluster_certificate_authority_data" {
  description = "Base64 encoded certificate data required to communicate with the cluster"
  value       = module.eks_al2.cluster_certificate_authority_data
#
#  depends_on = [
#    aws_eks_access_entry.this,
#    aws_eks_access_policy_association.this,
#  ]
}

output "cluster_endpoint" {
  description = "Endpoint for your Kubernetes API server"
  value = module.eks_al2.cluster_endpoint
  #value       = try("${local.name}-al2".this[0].endpoint, null)
#
#  depends_on = [
#    aws_eks_access_entry.this,
#    aws_eks_access_policy_association.this,
#  ]
}

output "cluster_id" {
  description = "The ID of the EKS cluster. Note: currently a value is returned only for local EKS clusters created on Outposts"
  value       = try("${local.name}-al2".this[0].cluster_id, "")
}

#output "cluster_name" {
#  description = "The name of the EKS cluster"
#  value       = try("${local.name}-al2".this[0].name, "")
#
#  depends_on = [
#    aws_eks_access_entry.this,
#    aws_eks_access_policy_association.this,
#  ]
#}

output "cluster_version" {
  description = "The Kubernetes version for the cluster"
  value       = try("${local.name}-al2".this[0].version, null)
}

output "cluster_platform_version" {
  description = "Platform version for the cluster"
  value       = try("${local.name}-al2".this[0].platform_version, null)
}
