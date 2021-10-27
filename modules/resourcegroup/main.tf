resource "azurerm_resource_group" "azure-stack-rs" {
  name     = var.rg_name
  location = var.rg_location
}
