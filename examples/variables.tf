variable "resources_example" {
  type        = map(string)
  description = "A map which has the base_name as the key and the resource_type as the value."
  default = {
    baseobjectName-1     = "virtual_machine"
    TheOther-base-name-2 = "key_vault"
    Storage_account_name = "storage_account"
  }
}