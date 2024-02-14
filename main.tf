resource "azurerm_resource_group" "test_6Ua9h2aV7tWwLJYE" {
  name     = "test"
  location = "Asia"
}

resource "azurerm_storage_account" "test_6Ua9h2aV7tWwLJYE" {
  name                     = "test"
  resource_group_name      = azurerm_resource_group.test_6Ua9h2aV7tWwLJYE.name
  location                 = azurerm_resource_group.test_6Ua9h2aV7tWwLJYE.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "test_6Ua9h2aV7tWwLJYE" {
  name                  = "test"
  storage_account_name  = azurerm_storage_account.test_6Ua9h2aV7tWwLJYE.name
  container_access_type = "container"
}
