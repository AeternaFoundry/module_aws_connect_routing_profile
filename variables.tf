variable "connect_routing_profiles" {
  description = <<EOT
Map of connect_routing_profiles, attributes below
Required:
    - default_outbound_queue_id
    - description
    - instance_id
    - name
    - media_concurrencies (block):
        - channel (required)
        - concurrency (required)
        - cross_channel_behavior (optional, block):
            - behavior_type (required)
Optional:
    - region
    - tags
    - tags_all
    - queue_configs (block):
        - channel (required)
        - delay (required)
        - priority (required)
        - queue_id (required)
EOT

  type = map(object({
    default_outbound_queue_id = string
    description               = string
    instance_id               = string
    name                      = string
    region                    = optional(string)
    tags                      = optional(map(string))
    tags_all                  = optional(map(string))
    media_concurrencies = list(object({
      channel     = string
      concurrency = number
      cross_channel_behavior = optional(object({
        behavior_type = string
      }))
    }))
    queue_configs = optional(list(object({
      channel  = string
      delay    = number
      priority = number
      queue_id = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.connect_routing_profiles : (
        length(v.media_concurrencies) >= 1
      )
    ])
    error_message = "Each media_concurrencies list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.connect_routing_profiles : (
        alltrue([for item in v.media_concurrencies : (item.concurrency >= 1 && item.concurrency <= 10)])
      )
    ])
    error_message = "must be between 1 and 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.connect_routing_profiles : (
        v.queue_configs == null || alltrue([for item in v.queue_configs : (item.delay >= 0 && item.delay <= 9999)])
      )
    ])
    error_message = "must be between 0 and 9999"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

