resource "azurerm_resource_group" "ghrg" {
  name     = var.rg-name
  location = var.location 
}
