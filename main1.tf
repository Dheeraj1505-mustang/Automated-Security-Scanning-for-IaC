resource "azurerm_storage_account" "example" {
  name                     = "examplestorageacct"
  resource_group_name      = "rg-devops"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  enable_https_traffic_only = true
  public_network_access    = "Disabled"
  min_tls_version          = "TLS1_2"
  allow_blob_public_access = false

  blob_properties {
    delete_retention_policy {
      days = 7
    }
  }
}

# Optionally add encryption scope with Customer Managed Key (CMK)
# encryption_scope = "CMK"
