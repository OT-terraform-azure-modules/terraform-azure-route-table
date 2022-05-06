
resource "azurerm_route_table" "module_route_table" {
  name                          = var.route_table_name
  location                      = var.route_table_location
  resource_group_name           = var.resource_group_name
  disable_bgp_route_propagation = var.disable_bgp_route_propagation
  tags                          = var.tags
}
  resource "azurerm_route" "route" {
    route_table_name    = azurerm_route_table.module_route_table.name
    resource_group_name = var.resource_group_name
    count               = length (var.route_names)
    name                = var.route_names[count.index]
    address_prefix      = var.route_address_prefix[count.index]
    next_hop_type       = var.route_next_hope_type[count.index]
  }


