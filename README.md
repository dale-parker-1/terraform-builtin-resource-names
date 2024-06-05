# Resource Naming Module

Terraform module that generates resource names based on the following criteria


## Usage

Input is of type map with the base_name as the key and resource_type as the value.

### Valid values for resource_type:
1. "virtual_machine"
2. "key_vault"
3. "storage_account"

### Name Generation Logic
<p>If the resource_type is "virtual_machine" you should take the "base_name" and append "vm-" to the front of it and "-00" to the back. If the base name and and values you're appending are greater than 15 characters you should truncate the "base_name" only in order to be 15 characters when combined with your additional characters. Note that the base_name can be greater than 15 characters.</p>
<p>If the resource_type is "key_vault" you should append "kv-" to the front of "base_name" and then set all characters to lower case.</p>
<p>If the resource_type is "storage_account" you should append "sa" to the front of "base_name and then remove all "-" from the name and then set all characters to lower case.</p>
