output "pubsub_topics_id" {
  description = "Map of id values across all pubsub_topics, keyed the same as var.pubsub_topics except keys with no id are omitted"
  value       = { for k, v in google_pubsub_topic.pubsub_topics : k => v.id if v.id != null && length(v.id) > 0 }
}
output "pubsub_topics_deletion_policy" {
  description = "Map of deletion_policy values across all pubsub_topics, keyed the same as var.pubsub_topics except keys with no deletion_policy are omitted"
  value       = { for k, v in google_pubsub_topic.pubsub_topics : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "pubsub_topics_effective_labels" {
  description = "Map of effective_labels values across all pubsub_topics, keyed the same as var.pubsub_topics except keys with no effective_labels are omitted"
  value       = { for k, v in google_pubsub_topic.pubsub_topics : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "pubsub_topics_ingestion_data_source_settings" {
  description = "Map of ingestion_data_source_settings values across all pubsub_topics, keyed the same as var.pubsub_topics except keys with no ingestion_data_source_settings are omitted"
  value       = { for k, v in google_pubsub_topic.pubsub_topics : k => one(v.ingestion_data_source_settings) if v.ingestion_data_source_settings != null && length(v.ingestion_data_source_settings) > 0 }
}
output "pubsub_topics_kms_key_name" {
  description = "Map of kms_key_name values across all pubsub_topics, keyed the same as var.pubsub_topics except keys with no kms_key_name are omitted"
  value       = { for k, v in google_pubsub_topic.pubsub_topics : k => v.kms_key_name if v.kms_key_name != null && length(v.kms_key_name) > 0 }
}
output "pubsub_topics_labels" {
  description = "Map of labels values across all pubsub_topics, keyed the same as var.pubsub_topics except keys with no labels are omitted"
  value       = { for k, v in google_pubsub_topic.pubsub_topics : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "pubsub_topics_message_retention_duration" {
  description = "Map of message_retention_duration values across all pubsub_topics, keyed the same as var.pubsub_topics except keys with no message_retention_duration are omitted"
  value       = { for k, v in google_pubsub_topic.pubsub_topics : k => v.message_retention_duration if v.message_retention_duration != null && length(v.message_retention_duration) > 0 }
}
output "pubsub_topics_message_storage_policy" {
  description = "Map of message_storage_policy values across all pubsub_topics, keyed the same as var.pubsub_topics except keys with no message_storage_policy are omitted"
  value       = { for k, v in google_pubsub_topic.pubsub_topics : k => one(v.message_storage_policy) if v.message_storage_policy != null && length(v.message_storage_policy) > 0 }
}
output "pubsub_topics_message_transforms" {
  description = "Map of message_transforms values across all pubsub_topics, keyed the same as var.pubsub_topics except keys with no message_transforms are omitted"
  value       = { for k, v in google_pubsub_topic.pubsub_topics : k => v.message_transforms if v.message_transforms != null && length(v.message_transforms) > 0 }
}
output "pubsub_topics_name" {
  description = "Map of name values across all pubsub_topics, keyed the same as var.pubsub_topics except keys with no name are omitted"
  value       = { for k, v in google_pubsub_topic.pubsub_topics : k => v.name if v.name != null && length(v.name) > 0 }
}
output "pubsub_topics_project" {
  description = "Map of project values across all pubsub_topics, keyed the same as var.pubsub_topics except keys with no project are omitted"
  value       = { for k, v in google_pubsub_topic.pubsub_topics : k => v.project if v.project != null && length(v.project) > 0 }
}
output "pubsub_topics_schema_settings" {
  description = "Map of schema_settings values across all pubsub_topics, keyed the same as var.pubsub_topics except keys with no schema_settings are omitted"
  value       = { for k, v in google_pubsub_topic.pubsub_topics : k => one(v.schema_settings) if v.schema_settings != null && length(v.schema_settings) > 0 }
}
output "pubsub_topics_tags" {
  description = "Map of tags values across all pubsub_topics, keyed the same as var.pubsub_topics except keys with no tags are omitted"
  value       = { for k, v in google_pubsub_topic.pubsub_topics : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "pubsub_topics_terraform_labels" {
  description = "Map of terraform_labels values across all pubsub_topics, keyed the same as var.pubsub_topics except keys with no terraform_labels are omitted"
  value       = { for k, v in google_pubsub_topic.pubsub_topics : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}

