variable "webapp_name" {
  type        = string
  description = "Name of azure webapp"
}

variable "webapp_deployment_name" {
  type        = string
  description = "Deployment name"
}

variable "sku_name" {
  type        = string
  description = "The SKU name of App Service Plan"
}

variable "sku_tier" {
  type        = string
  description = "The SKU tier of App Service Plan"
}

variable "resource_group_name" {
  type        = string
  description = "The name of resource group"
}

variable "rg_location" {
  type        = string
  description = "Location of resource group"
}

variable "deployment_count" {
  type        = number
  description = "Number of template deployments"
}

variable "networkInterfaceName" {
  type        = string
  description = "VM network interface name"
}

variable "networkSecurityGroupName" {
  type        = string
  description = "NSG name"
}

variable "networkSecurityGroupRules" {
#  type        = list
  type        = string
  description = "NSG rules"
}

variable "subnetName" {
  type        = string
  description = "subnet name"
}

variable "virtualNetworkName" {
  type        = string
  description = "virtual network name"
}       

variable "addressPrefixes" {
#  type        = list
  type        = string
  description = "address prefixes"
} 

variable "subnets" {
#  type        = list
  type        = string
  description = "subnets"
} 

variable "publicIpAddressName" {
  type        = string
  description = "subnets"
} 
        
variable "publicIpAddressType" {
  type        = string
  description = "type"
}    

variable "publicIpAddressSku" {
  type        = string
  description = "sku"
}  
        
variable "virtualMachineName" {
  type        = string
  description = "vmname"
}         
       
variable "virtualMachineComputerName" {
  type        = string
  description = "vmnamecomputer"
}    

variable "virtualMachineRG" {
  type        = string
  description = "vmrg"
}   

variable "osDiskType" {
  type        = string
  description = "disktype"
} 

variable "virtualMachineSize" {
  type        = string
  description = "vmsize"
}        
       
variable "adminUsername" {
  type        = string
  description = "adminusername"
}  

variable "adminPassword" {
  type        = string
  description = "adminpassword"
}  

variable "patchMode" {
  type        = string
  description = "patchmode"
}        
       
       
