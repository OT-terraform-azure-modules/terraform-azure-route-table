Azure Route Table Terraform Module
=====================================

[![Opstree Solutions][opstree_avatar]][opstree_homepage]

[Opstree Solutions][opstree_homepage] 

   [opstree_homepage]: https://opstree.github.io/
   [opstree_avatar]: https://img.cloudposse.com/150x150/https://github.com/opstree.png

- Terraform module which creates Route Table on Azure.

- This project is a part of open source intiative For Azure Terraform Modules.

These types of resources are supported:
 * [Route Table](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route_table)

Terraform versions
------------------
Terraform 1.1.3

Usage
------

```hcl
module "res_group" {
  source                  = "OT-terraform-azure-modules/resource-group/azure"
  resource_group_name     = ""
  resource_group_location = ""
  lock_level_value        = ""
  tag_map = {
    Name = "azure_rg"
  }
}

module "route_table_module" {
source                         = "OT-terraform-azure-modules/route-table/azure"
route_table_name               = "_"
route_table_location           = module.res_group.resource_group_location
resource_group_name            = module.res_group.resource_group_name
disable_bgp_route_propagation  = "_"
route_names                   = ["_", "_"]
route_address_prefix          = ["_", "_"]
route_next_hope_type          = ["_", "_"]

tags   = {
    Name  = "Route_table"
  }
}

```
Resources
------
| Name | Type |
|------|------|
| [azurerm_resource_group.module_rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_route_table.module_route_table](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route_table) | resource |


Inputs
------
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| lock_level_value | Specifies the level to be used for this lock | `string` | CanNotDelete | no |
| route_table_name  | Name Route Table | `list(string)` |  | Yes |
| disable_bgp_route_propagation  | Boolean flag which controls propagation of routes | `Boolean` | false | no |
| tag_map |Map tags to resources| `map(string)` |  | no |
| routes_name |  The name of the routes | `list(string)` | | yes |
| routes_address_prefix |The list of address prefixes to use for each route | `list(string)` |  | yes |
| routes_next_hop_type |The type of Azure hop the packet should be sent to for each corresponding route | `list(string)` |  | yes |

Output
-----
| Name | Description |
|------|-------------|
|route_table_id |The id of the newly created Route Table |
|route_table_name |Route table name |

### Contributors
|  [![Kritarth Pant][kritarth_avatar]][kritarth_homepage]<br/>[Kritarth Pant][kritarth_homepage] |
|---|

[Kritarth_homepage]: https://gitlab.com/kritarthp
[Kritarth_avatar]: https://gitlab.com/uploads/-/system/user/avatar/8613469/avatar.png?width=400
