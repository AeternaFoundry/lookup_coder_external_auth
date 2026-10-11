variable "external_auth_lookup" {
  description = <<EOT
Map of external_auth_lookup, attributes below
Required:
    - id
Optional:
    - optional
EOT

  type = map(object({
    id       = string
    optional = optional(bool)
  }))
}

