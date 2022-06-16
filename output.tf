output "route_table_id" {
  value = azurerm_route_table.module_route_table.id
 description = "The id of the newly created Route Table"
}

output "route_table_name" {
  value       = azurerm_route_table.module_route_table.name
  description = "Route table name"

}
