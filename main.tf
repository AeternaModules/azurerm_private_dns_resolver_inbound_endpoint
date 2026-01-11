resource "azurerm_private_dns_resolver_inbound_endpoint" "private_dns_resolver_inbound_endpoints" {
  for_each = var.private_dns_resolver_inbound_endpoints

  location                = each.value.location
  name                    = each.value.name
  private_dns_resolver_id = each.value.private_dns_resolver_id
  tags                    = each.value.tags

  ip_configurations {
    private_ip_address           = each.value.ip_configurations.private_ip_address
    private_ip_allocation_method = each.value.ip_configurations.private_ip_allocation_method
    subnet_id                    = each.value.ip_configurations.subnet_id
  }
}

