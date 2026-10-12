output "activation_flags_lookup_id" {
  description = "Map of id values across all activation_flags_lookup, keyed the same as var.activation_flags_lookup except keys with no id are omitted"
  value       = { for k, v in data.vault_activation_flags.activation_flags_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "activation_flags_lookup_activated_flags" {
  description = "Map of activated_flags values across all activation_flags_lookup, keyed the same as var.activation_flags_lookup except keys with no activated_flags are omitted"
  value       = { for k, v in data.vault_activation_flags.activation_flags_lookup : k => v.activated_flags if v.activated_flags != null && length(v.activated_flags) > 0 }
}
output "activation_flags_lookup_unactivated_flags" {
  description = "Map of unactivated_flags values across all activation_flags_lookup, keyed the same as var.activation_flags_lookup except keys with no unactivated_flags are omitted"
  value       = { for k, v in data.vault_activation_flags.activation_flags_lookup : k => v.unactivated_flags if v.unactivated_flags != null && length(v.unactivated_flags) > 0 }
}

