variable "pubsub_topics" {
  description = <<EOT
Map of pubsub_topics, attributes below
Required:
    - name
Optional:
    - deletion_policy
    - kms_key_name
    - labels
    - message_retention_duration
    - project
    - tags
    - ingestion_data_source_settings (block):
        - aws_kinesis (optional, block):
            - aws_role_arn (required)
            - consumer_arn (required)
            - gcp_service_account (required)
            - stream_arn (required)
        - aws_msk (optional, block):
            - aws_role_arn (required)
            - cluster_arn (required)
            - gcp_service_account (required)
            - topic (required)
        - azure_event_hubs (optional, block):
            - client_id (optional)
            - event_hub (optional)
            - gcp_service_account (optional)
            - namespace (optional)
            - resource_group (optional)
            - subscription_id (optional)
            - tenant_id (optional)
        - cloud_storage (optional, block):
            - avro_format (optional, block):
            - bucket (required)
            - match_glob (optional)
            - minimum_object_create_time (optional)
            - pubsub_avro_format (optional, block):
            - text_format (optional, block):
                - delimiter (optional)
        - confluent_cloud (optional, block):
            - bootstrap_server (required)
            - cluster_id (optional)
            - gcp_service_account (required)
            - identity_pool_id (required)
            - topic (required)
        - platform_logs_settings (optional, block):
            - severity (optional)
    - message_storage_policy (block):
        - allowed_persistence_regions (required)
        - enforce_in_transit (optional)
    - message_transforms (block):
        - ai_inference (optional, block):
            - endpoint (required)
            - service_account_email (optional)
            - unstructured_inference (optional, block):
                - parameters (optional)
        - disabled (optional)
        - javascript_udf (optional, block):
            - code (required)
            - function_name (required)
    - schema_settings (block):
        - encoding (optional)
        - first_revision_id (optional)
        - last_revision_id (optional)
        - schema (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                       = string
    deletion_policy            = optional(string)
    kms_key_name               = optional(string)
    labels                     = optional(map(string))
    message_retention_duration = optional(string)
    project                    = optional(string)
    tags                       = optional(map(string))
    ingestion_data_source_settings = optional(object({
      aws_kinesis = optional(object({
        aws_role_arn        = string
        consumer_arn        = string
        gcp_service_account = string
        stream_arn          = string
      }))
      aws_msk = optional(object({
        aws_role_arn        = string
        cluster_arn         = string
        gcp_service_account = string
        topic               = string
      }))
      azure_event_hubs = optional(object({
        client_id           = optional(string)
        event_hub           = optional(string)
        gcp_service_account = optional(string)
        namespace           = optional(string)
        resource_group      = optional(string)
        subscription_id     = optional(string)
        tenant_id           = optional(string)
      }))
      cloud_storage = optional(object({
        avro_format = optional(object({
        }))
        bucket                     = string
        match_glob                 = optional(string)
        minimum_object_create_time = optional(string)
        pubsub_avro_format = optional(object({
        }))
        text_format = optional(object({
          delimiter = optional(string)
        }))
      }))
      confluent_cloud = optional(object({
        bootstrap_server    = string
        cluster_id          = optional(string)
        gcp_service_account = string
        identity_pool_id    = string
        topic               = string
      }))
      platform_logs_settings = optional(object({
        severity = optional(string)
      }))
    }))
    message_storage_policy = optional(object({
      allowed_persistence_regions = set(string)
      enforce_in_transit          = optional(bool)
    }))
    message_transforms = optional(list(object({
      ai_inference = optional(object({
        endpoint              = string
        service_account_email = optional(string)
        unstructured_inference = optional(object({
          parameters = optional(map(string))
        }))
      }))
      disabled = optional(bool)
      javascript_udf = optional(object({
        code          = string
        function_name = string
      }))
    })))
    schema_settings = optional(object({
      encoding          = optional(string)
      first_revision_id = optional(string)
      last_revision_id  = optional(string)
      schema            = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

