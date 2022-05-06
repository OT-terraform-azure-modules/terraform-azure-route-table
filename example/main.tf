provider "azurerm" {
  features {}
}

module "res_group" {
  source                  = "OT-terraform-azure-modules/resource-group/azure"
  resource_group_name     = "test-rg"
  resource_group_location = "West Europe"
  lock_level_value        = ""
  tag_map = {
    Name = "AzureRG"
  }
}
module "route_table_module" {
  source                        = "OT-terraform-azure-modules/route-table/azure"
  route_table_name              = "test"
  route_table_location          = module.res_group.resource_group_location
  resource_group_name           = module.res_group.resource_group_name
  disable_bgp_route_propagation = false
  route_names                   = ["subnet1", "subnet2"]
  route_address_prefix          = ["10.1.0.0/16", "10.2.0.0/16"]
  route_next_hope_type          = ["VnetLocal", "VirtualNetworkGateway"]
  tags = {
    env : "test"
  }
}
