output "group_protected_environments_id" {
  description = "Map of id values across all group_protected_environments, keyed the same as var.group_protected_environments except keys with no id are omitted"
  value       = { for k, v in gitlab_group_protected_environment.group_protected_environments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_protected_environments_approval_rules" {
  description = "Map of approval_rules values across all group_protected_environments, keyed the same as var.group_protected_environments except keys with no approval_rules are omitted"
  value       = { for k, v in gitlab_group_protected_environment.group_protected_environments : k => v.approval_rules if v.approval_rules != null && length(v.approval_rules) > 0 }
}
output "group_protected_environments_deploy_access_levels" {
  description = "Map of deploy_access_levels values across all group_protected_environments, keyed the same as var.group_protected_environments except keys with no deploy_access_levels are omitted"
  value       = { for k, v in gitlab_group_protected_environment.group_protected_environments : k => v.deploy_access_levels if v.deploy_access_levels != null && length(v.deploy_access_levels) > 0 }
}
output "group_protected_environments_environment" {
  description = "Map of environment values across all group_protected_environments, keyed the same as var.group_protected_environments except keys with no environment are omitted"
  value       = { for k, v in gitlab_group_protected_environment.group_protected_environments : k => v.environment if v.environment != null && length(v.environment) > 0 }
}
output "group_protected_environments_group" {
  description = "Map of group values across all group_protected_environments, keyed the same as var.group_protected_environments except keys with no group are omitted"
  value       = { for k, v in gitlab_group_protected_environment.group_protected_environments : k => v.group if v.group != null && length(v.group) > 0 }
}

