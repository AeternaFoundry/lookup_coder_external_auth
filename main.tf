data "coder_external_auth" "external_auth_lookup" {
  for_each = var.external_auth_lookup

  id       = each.value.id
  optional = each.value.optional
}

