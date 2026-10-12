data "vault_activation_flags" "activation_flags_lookup" {
  for_each = var.activation_flags_lookup

}

