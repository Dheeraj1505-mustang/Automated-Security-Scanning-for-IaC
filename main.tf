resource "azurerm_storage_account" "example" {
  name                     = "examplestorageacct"
  resource_group_name      = "rg-devops"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  enable_https_traffic_only = false
  public_network_access    = "Enabled"
}
