variable "group_protected_environments" {
  description = <<EOT
Map of group_protected_environments, attributes below
Required:
    - deploy_access_levels
    - environment
    - group
Optional:
    - approval_rules
EOT

  type = map(object({
    deploy_access_levels = set(object({
      access_level           = optional(string)
      group_id               = optional(number)
      group_inheritance_type = optional(number)
      user_id                = optional(number)
    }))
    environment = string
    group       = string
    approval_rules = optional(set(object({
      access_level           = optional(string)
      group_id               = optional(number)
      group_inheritance_type = optional(number)
      required_approvals     = optional(number)
      user_id                = optional(number)
    })))
  }))
}

