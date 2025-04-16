# EKS Cluster ID
output "aws_eks_cluster_name" {
  value = aws_eks_cluster.eks.id
}

# IAM Wokrer Node Instance Profile 
output "instance_profile" {
  value = aws_iam_instance_profile.worker.name
}