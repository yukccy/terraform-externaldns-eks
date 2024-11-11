resource "kubernetes_namespace_v1" "externaldns_namespace" {
  metadata {
    name = var.externaldns_namespace
  }

  depends_on = [ module.eks ]
}