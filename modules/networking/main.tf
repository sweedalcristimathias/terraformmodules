resource "azurerm_virtual_network" "vnet" {
    
  name                = "${local.resource_name_prefix}-${var.vnet_name}"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.vnet_address_space
  tags = local.common_tags
}

#thgis will vnet will give you a range 65565 ip address
resource "azurerm_subnet" "web-subnet" {
  name                 = "${local.resource_name_prefix}-${var.web_subnet_name}"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.web_subnet_address
  
}
#this subnet will give you a range of 255 ip address

# Create a resource group

# Create a resource group
resource "azurerm_resource_group" "example" {
  #resource "nameoftheapi" "refrencelable"
  #when you are creating a resource 
  name     = "${local.resource_name_prefix}-${var.resource_group_name}"
  ###sap-dev-rg-default
  location = var.resource_group_location
  tags = local.common_tags
}


locals {
  owners = var.business_devision
  environment = var.environment
  resource_name_prefix = "${var.business_devision}-${var.environment}"
  #sap-dev
  common_tags = {
    owners = local.owners #smile
    environment = local.environment #cry
  }
}

#against a name i want to define common expression

/*security_group = {
    priority:portnumber
    200:80
    210:81
}

for_express i can loop
*/