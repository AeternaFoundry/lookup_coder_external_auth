output "external_auth_lookup_access_token" {
  description = "Map of access_token values across all external_auth_lookup, keyed the same as var.external_auth_lookup except keys with no access_token are omitted"
  value       = { for k, v in data.coder_external_auth.external_auth_lookup : k => v.access_token if v.access_token != null && length(v.access_token) > 0 }
  sensitive   = true
}
output "external_auth_lookup_id" {
  description = "Map of id values across all external_auth_lookup, keyed the same as var.external_auth_lookup except keys with no id are omitted"
  value       = { for k, v in data.coder_external_auth.external_auth_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "external_auth_lookup_optional" {
  description = "Map of optional values across all external_auth_lookup, keyed the same as var.external_auth_lookup except keys with no optional are omitted"
  value       = { for k, v in data.coder_external_auth.external_auth_lookup : k => v.optional if v.optional != null }
}

