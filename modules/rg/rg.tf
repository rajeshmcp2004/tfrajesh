# testing is version 2.0.0 #
resource "azurerm_resource_group" "rg" {
  count    = length(var.rg_names)
 
  name     = var.rg_names[count.index]
  location = var.rg_location
 
  tags = {
    environment = "Dev"
  }
}
