resource "terraform_data" "resource_name" {
  input = {
    resource_name = (var.resource_type == "virtual_machine" ? format("vm-%s-00", substr(var.base_name, 0, 9)) :
      (var.resource_type == "key_vault" ? lower("kv-${var.base_name}") : replace("sa${var.base_name}", "-", ""))
    )
  }
}