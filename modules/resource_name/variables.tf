variable "base_name" {
  description = "The base name of the resource."
  type        = string
}

variable "resource_type" {
  description = "The type of resource. Allowed values are virtual_machine, key_vault, and storage_account"
  type        = string

  validation {
    condition     = contains(["virtual_machine", "key_vault", "storage_account"], var.resource_type)
    error_message = "Please enter a valid value. Allowed values are virtual_machine, key_vault, and storage_account"
  }
}