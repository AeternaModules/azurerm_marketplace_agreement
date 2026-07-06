output "marketplace_agreements" {
  description = "All marketplace_agreement resources"
  value       = azurerm_marketplace_agreement.marketplace_agreements
}
output "marketplace_agreements_license_text_link" {
  description = "List of license_text_link values across all marketplace_agreements"
  value       = [for k, v in azurerm_marketplace_agreement.marketplace_agreements : v.license_text_link]
}
output "marketplace_agreements_offer" {
  description = "List of offer values across all marketplace_agreements"
  value       = [for k, v in azurerm_marketplace_agreement.marketplace_agreements : v.offer]
}
output "marketplace_agreements_plan" {
  description = "List of plan values across all marketplace_agreements"
  value       = [for k, v in azurerm_marketplace_agreement.marketplace_agreements : v.plan]
}
output "marketplace_agreements_privacy_policy_link" {
  description = "List of privacy_policy_link values across all marketplace_agreements"
  value       = [for k, v in azurerm_marketplace_agreement.marketplace_agreements : v.privacy_policy_link]
}
output "marketplace_agreements_publisher" {
  description = "List of publisher values across all marketplace_agreements"
  value       = [for k, v in azurerm_marketplace_agreement.marketplace_agreements : v.publisher]
}

