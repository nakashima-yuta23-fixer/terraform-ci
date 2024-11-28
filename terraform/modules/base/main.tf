resource "azurerm_resource_group" "this" {
  name     = "rg-testci-base-dv-je"
  location = var.location
}

resource "azurerm_container_registry" "acr" {
  name                = "acrtestcibasedvje"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  sku                 = "Basic"
  admin_enabled       = false
}
