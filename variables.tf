variable "private_dns_resolver_inbound_endpoints" {
  description = <<EOT
Map of private_dns_resolver_inbound_endpoints, attributes below
Required:
    - location
    - name
    - private_dns_resolver_id
    - ip_configurations (block):
        - private_ip_address (optional)
        - private_ip_allocation_method (optional)
        - subnet_id (required)
Optional:
    - tags
EOT

  type = map(object({
    location                = string
    name                    = string
    private_dns_resolver_id = string
    tags                    = optional(map(string))
    ip_configurations = object({
      private_ip_address           = optional(string)
      private_ip_allocation_method = optional(string)
      subnet_id                    = string
    })
  }))
}

