variable "activation_flags_lookup" {
  description = <<EOT
Map of activation_flags_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

