resource "aws_eks_cluster" "eks" {
  name     = "basset-eks-cluster"
  role_arn = aws_iam_role.basset_eks_role.arn

  vpc_config {

    subnet_ids = var.subnet_ids
  }

  depends_on = [aws_iam_role_policy_attachment.basset_eks_policy]
}



resource "aws_eks_node_group" "node_group" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "basset-worker-node"
  node_role_arn   = aws_iam_role.basset_node_instance_role.arn
  subnet_ids      = var.subnet_ids

  instance_types = [var.instance_type]
  scaling_config {
    desired_size = 1
    max_size     = 3
    min_size     = 1
  }
}

