module "resource_names" {
  for_each      = var.resources
  source        = "./modules/resource_name"
  base_name     = each.key
  resource_type = each.value
}