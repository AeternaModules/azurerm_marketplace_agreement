variable "marketplace_agreements" {
  description = <<EOT
Map of marketplace_agreements, attributes below
Required:
    - offer
    - plan
    - publisher
EOT

  type = map(object({
    offer     = string
    plan      = string
    publisher = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_marketplace_agreement's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: offer
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: plan
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: publisher
  #   condition: length(value) > 0
  #   message:   must not be empty
}

