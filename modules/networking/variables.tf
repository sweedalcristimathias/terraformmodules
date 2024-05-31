variable "vnet_name" {
  type = string 
 # default = "vnet-default"
}

variable "vnet_address_space" {
  type = list(string)
  #is like an array
  #default = ["10.0.0.0/16"]
}

variable "web_subnet_name" {
  type = string
  #default = "websubnet"
}

variable "web_subnet_address" {
  type = list(string)
  #default = [ "10.0.1.0/24" ]
}

###bastion subnet 
variable "bastion_subnet_name" {
  type = string 
  #default = "bastionsubnet"
}

variable "bastion_subnet_address" {
  type = list(string) 
  #default = ["10.0.2.0/24"]
}

variable "resource_group_name" {
    #the name of the varaible can be anything but when you define varaible the block should start with varabile
  description = "This contains resource group name"
  type = string #listofstring(array) map numeric
  #default = "rg-default"
}

variable "resource_group_location" {
  description = "Resource Group Name"
  type = string 
  #default = "eastus2"
}

variable "business_devision" {
  type = string
  #default = "sap"
}

variable "environment" {
  type = string 
  #default = "dev"
}

#i want my resource group name will be a meaningfull name
#rg-default-sap-dev 