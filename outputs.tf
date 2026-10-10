output "connect_routing_profiles_id" {
  description = "Map of id values across all connect_routing_profiles, keyed the same as var.connect_routing_profiles"
  value       = { for k, v in aws_connect_routing_profile.connect_routing_profiles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "connect_routing_profiles_arn" {
  description = "Map of arn values across all connect_routing_profiles, keyed the same as var.connect_routing_profiles"
  value       = { for k, v in aws_connect_routing_profile.connect_routing_profiles : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "connect_routing_profiles_default_outbound_queue_id" {
  description = "Map of default_outbound_queue_id values across all connect_routing_profiles, keyed the same as var.connect_routing_profiles"
  value       = { for k, v in aws_connect_routing_profile.connect_routing_profiles : k => v.default_outbound_queue_id if v.default_outbound_queue_id != null && length(v.default_outbound_queue_id) > 0 }
}
output "connect_routing_profiles_description" {
  description = "Map of description values across all connect_routing_profiles, keyed the same as var.connect_routing_profiles"
  value       = { for k, v in aws_connect_routing_profile.connect_routing_profiles : k => v.description if v.description != null && length(v.description) > 0 }
}
output "connect_routing_profiles_instance_id" {
  description = "Map of instance_id values across all connect_routing_profiles, keyed the same as var.connect_routing_profiles"
  value       = { for k, v in aws_connect_routing_profile.connect_routing_profiles : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "connect_routing_profiles_media_concurrencies" {
  description = "Map of media_concurrencies values across all connect_routing_profiles, keyed the same as var.connect_routing_profiles"
  value       = { for k, v in aws_connect_routing_profile.connect_routing_profiles : k => v.media_concurrencies if v.media_concurrencies != null && length(v.media_concurrencies) > 0 }
}
output "connect_routing_profiles_name" {
  description = "Map of name values across all connect_routing_profiles, keyed the same as var.connect_routing_profiles"
  value       = { for k, v in aws_connect_routing_profile.connect_routing_profiles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "connect_routing_profiles_queue_configs" {
  description = "Map of queue_configs values across all connect_routing_profiles, keyed the same as var.connect_routing_profiles"
  value       = { for k, v in aws_connect_routing_profile.connect_routing_profiles : k => v.queue_configs if v.queue_configs != null && length(v.queue_configs) > 0 }
}
output "connect_routing_profiles_region" {
  description = "Map of region values across all connect_routing_profiles, keyed the same as var.connect_routing_profiles"
  value       = { for k, v in aws_connect_routing_profile.connect_routing_profiles : k => v.region if v.region != null && length(v.region) > 0 }
}
output "connect_routing_profiles_routing_profile_id" {
  description = "Map of routing_profile_id values across all connect_routing_profiles, keyed the same as var.connect_routing_profiles"
  value       = { for k, v in aws_connect_routing_profile.connect_routing_profiles : k => v.routing_profile_id if v.routing_profile_id != null && length(v.routing_profile_id) > 0 }
}
output "connect_routing_profiles_tags" {
  description = "Map of tags values across all connect_routing_profiles, keyed the same as var.connect_routing_profiles"
  value       = { for k, v in aws_connect_routing_profile.connect_routing_profiles : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "connect_routing_profiles_tags_all" {
  description = "Map of tags_all values across all connect_routing_profiles, keyed the same as var.connect_routing_profiles"
  value       = { for k, v in aws_connect_routing_profile.connect_routing_profiles : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

