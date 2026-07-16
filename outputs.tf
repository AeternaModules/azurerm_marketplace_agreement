output "marketplace_agreements_id" {
  description = "Map of id values across all marketplace_agreements, keyed the same as var.marketplace_agreements"
  value       = { for k, v in azurerm_marketplace_agreement.marketplace_agreements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "marketplace_agreements_license_text_link" {
  description = "Map of license_text_link values across all marketplace_agreements, keyed the same as var.marketplace_agreements"
  value       = { for k, v in azurerm_marketplace_agreement.marketplace_agreements : k => v.license_text_link if v.license_text_link != null && length(v.license_text_link) > 0 }
}
output "marketplace_agreements_offer" {
  description = "Map of offer values across all marketplace_agreements, keyed the same as var.marketplace_agreements"
  value       = { for k, v in azurerm_marketplace_agreement.marketplace_agreements : k => v.offer if v.offer != null && length(v.offer) > 0 }
}
output "marketplace_agreements_plan" {
  description = "Map of plan values across all marketplace_agreements, keyed the same as var.marketplace_agreements"
  value       = { for k, v in azurerm_marketplace_agreement.marketplace_agreements : k => v.plan if v.plan != null && length(v.plan) > 0 }
}
output "marketplace_agreements_privacy_policy_link" {
  description = "Map of privacy_policy_link values across all marketplace_agreements, keyed the same as var.marketplace_agreements"
  value       = { for k, v in azurerm_marketplace_agreement.marketplace_agreements : k => v.privacy_policy_link if v.privacy_policy_link != null && length(v.privacy_policy_link) > 0 }
}
output "marketplace_agreements_publisher" {
  description = "Map of publisher values across all marketplace_agreements, keyed the same as var.marketplace_agreements"
  value       = { for k, v in azurerm_marketplace_agreement.marketplace_agreements : k => v.publisher if v.publisher != null && length(v.publisher) > 0 }
}

