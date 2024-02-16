resource "azurerm_resource_group" "asd_SGnj3bUNRngBhwKD" {
  name     = "Azure Storage"
  location = "Australia"
}

resource "azurerm_storage_account" "asd_SGnj3bUNRngBhwKD" {
  name                     = "sad"
  resource_group_name      = azurerm_resource_group.asd_SGnj3bUNRngBhwKD.name
  location                 = azurerm_resource_group.asd_SGnj3bUNRngBhwKD.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "asd_SGnj3bUNRngBhwKD" {
  name                  = "asd"
  storage_account_name  = azurerm_storage_account.asd_SGnj3bUNRngBhwKD.name
  container_access_type = "private"
}
