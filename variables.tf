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
  validation {
    condition = alltrue([
      for k, v in var.marketplace_agreements : (
        length(v.offer) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.marketplace_agreements : (
        length(v.plan) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.marketplace_agreements : (
        length(v.publisher) > 0
      )
    ])
    error_message = "must not be empty"
  }
}

