resource "gitlab_group_protected_environment" "group_protected_environments" {
  for_each = var.group_protected_environments

  deploy_access_levels = each.value.deploy_access_levels
  environment          = each.value.environment
  group                = each.value.group
  approval_rules       = each.value.approval_rules
}

