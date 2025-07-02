
variable "rg-names" {
  description = "making resource by for_each"
}

resource "azurerm_resource_group" "rg" {
  for_each = var.rg-names
  name     = each.value.name
  location = each.value.location
}