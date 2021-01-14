terraform {
  required_version = ">= 0.12.6"
    backend "remote" {
      organization = "WPPITPOC"
    
# The name of the Terraform Cloud workspace to store Terraform state files
    workspaces {
      name = "terraform-azure-armwebapp-deployment"
    }
  }
 }
# Creates a resource group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.rg_location
}

resource "azurerm_template_deployment" "azure_web_app" {
  count               = var.deployment_count
  name                = var.webapp_deployment_name
  resource_group_name = azurerm_resource_group.example.name

  template_body = file("./templates/webapp/deploy.json")

  parameters = {
    webAppName = var.webapp_name
    appSkuName = var.sku_name
    appSkuTier = var.sku_tier
    addressPrefixes = var.addressPrefixes
    subnets = var.subnets
    publicIpAddressName = var.publicIpAddressName
    networkSecurityGroupName = var.networkSecurityGroupName
    networkInterfaceName = var.networkInterfaceName
    networkSecurityGroupRules = var.networkSecurityGroupRules
    subnetName = var.subnetName
    virtualNetworkName = var.virtualNetworkName
    publicIpAddressType = var.publicIpAddressType
    publicIpAddressSku = var.publicIpAddressSku
    virtualMachineName = var.virtualMachineName
    virtualMachineComputerName = var.virtualMachineComputerName
    virtualMachineRG = var.virtualMachineRG
    osDiskType = var.osDiskType
    virtualMachineSize = var.virtualMachineSize
    adminUsername = var.adminUsername
    adminPassword = var.adminPassword 
    patchMode = var.patchMode
  }

  deployment_mode = "Incremental"
}
