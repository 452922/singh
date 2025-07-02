variable "storage-account" {
  description = "making storage account by for_each"

}

resource "azurerm_storage_account" "stg" {
  depends_on = [ azurerm_resource_group.rg ]
  for_each                 = var.storage-account
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = "LRS"
}