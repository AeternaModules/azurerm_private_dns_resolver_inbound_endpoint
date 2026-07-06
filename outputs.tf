output "private_dns_resolver_inbound_endpoints" {
  description = "All private_dns_resolver_inbound_endpoint resources"
  value       = azurerm_private_dns_resolver_inbound_endpoint.private_dns_resolver_inbound_endpoints
}
output "private_dns_resolver_inbound_endpoints_ip_configurations" {
  description = "List of ip_configurations values across all private_dns_resolver_inbound_endpoints"
  value       = [for k, v in azurerm_private_dns_resolver_inbound_endpoint.private_dns_resolver_inbound_endpoints : v.ip_configurations]
}
output "private_dns_resolver_inbound_endpoints_location" {
  description = "List of location values across all private_dns_resolver_inbound_endpoints"
  value       = [for k, v in azurerm_private_dns_resolver_inbound_endpoint.private_dns_resolver_inbound_endpoints : v.location]
}
output "private_dns_resolver_inbound_endpoints_name" {
  description = "List of name values across all private_dns_resolver_inbound_endpoints"
  value       = [for k, v in azurerm_private_dns_resolver_inbound_endpoint.private_dns_resolver_inbound_endpoints : v.name]
}
output "private_dns_resolver_inbound_endpoints_private_dns_resolver_id" {
  description = "List of private_dns_resolver_id values across all private_dns_resolver_inbound_endpoints"
  value       = [for k, v in azurerm_private_dns_resolver_inbound_endpoint.private_dns_resolver_inbound_endpoints : v.private_dns_resolver_id]
}
output "private_dns_resolver_inbound_endpoints_tags" {
  description = "List of tags values across all private_dns_resolver_inbound_endpoints"
  value       = [for k, v in azurerm_private_dns_resolver_inbound_endpoint.private_dns_resolver_inbound_endpoints : v.tags]
}

