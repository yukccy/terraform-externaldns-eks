module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.20.0"

  cluster_name    = "${var.env_name}-cluster"
  cluster_version = var.cluster_version

  cluster_endpoint_public_access  = true
  enable_irsa = true
  enable_cluster_creator_admin_permissions = true
  authentication_mode = "API_AND_CONFIG_MAP"

  cluster_addons = var.cluster_addons

  vpc_id = module.vpc.vpc_id
  subnet_ids = concat(sort(module.vpc.public_subnets), sort(module.vpc.private_subnets))

  eks_managed_node_group_defaults = {
    instance_types = var.default_instance_types
  }

  eks_managed_node_groups = var.eks_managed_node_groups
}