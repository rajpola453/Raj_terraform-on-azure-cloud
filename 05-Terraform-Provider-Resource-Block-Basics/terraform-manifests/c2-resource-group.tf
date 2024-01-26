# Resource Block
# Create a resource group
resource "azurerm_resource_group" "myrg" {
  name = "myrg-3"
  location = "East US"
}