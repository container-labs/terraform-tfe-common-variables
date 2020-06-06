# This code is a prototype and not engineered for production use.
# Error handling is incomplete or inappropriate for usage beyond
# a development sample.

resource "tfe_variable" "environment" {
  count        = length(var.environment) > 0 ? 1 : 0
  key          = "environment"
  value        = var.environment
  category     = "terraform"
  workspace_id = var.workspace_id
}

resource "tfe_variable" "google_project" {
  count        = length(var.google_project) > 0 ? 1 : 0
  key          = "GOOGLE_PROJECT"
  value        = var.google_project
  category     = "env"
  workspace_id = var.workspace_id
}

resource "tfe_variable" "project_id_terraform" {
  count        = length(var.google_project) > 0 ? 1 : 0
  key          = "project_id"
  value        = var.google_project
  category     = "terraform"
  workspace_id = var.workspace_id
}

resource "tfe_variable" "google_region_environment" {
  count        = length(var.google_region) > 0 ? 1 : 0
  key          = "GOOGLE_REGION"
  value        = var.google_region
  category     = "env"
  workspace_id = var.workspace_id
}

resource "tfe_variable" "google_region_terraform" {
  count        = length(var.google_region) > 0 ? 1 : 0
  key          = "region"
  value        = var.google_region
  category     = "terraform"
  workspace_id = var.workspace_id
}

resource "tfe_variable" "instance_number" {
  count        = length(var.instance_number) > 0 ? 1 : 0
  key          = "instance_number"
  value        = var.instance_number
  category     = "terraform"
  workspace_id = var.workspace_id
}

resource "tfe_variable" "location" {
  count        = length(var.location) > 0 ? 1 : 0
  key          = "location"
  value        = var.location
  category     = "terraform"
  sensitive    = false
  workspace_id = var.workspace_id
}

resource "tfe_variable" "parent_workspace_name" {
  count        = length(var.parent_workspace_name) > 0 ? 1 : 0
  key          = "parent_workspace_name"
  value        = var.parent_workspace_name
  category     = "terraform"
  sensitive    = false
  workspace_id = var.workspace_id
}

resource "tfe_variable" "ssh_key_id" {
  count        = length(var.ssh_key_id) > 0 ? 1 : 0
  key          = "ssh_key_id"
  value        = var.ssh_key_id
  category     = "terraform"
  sensitive    = true
  workspace_id = var.workspace_id
}

resource "tfe_variable" "stack" {
  count        = length(var.stack) > 0 ? 1 : 0
  key          = "stack"
  value        = var.stack
  category     = "terraform"
  workspace_id = var.workspace_id
}

resource "tfe_variable" "tfe_token" {
  count        = length(var.tfe_token) > 0 ? 1 : 0
  key          = "tfe_token"
  value        = var.tfe_token
  category     = "terraform"
  sensitive    = true
  workspace_id = var.workspace_id
}

resource "tfe_variable" "oauth_token_id" {
  count        = length(var.oauth_token_id) > 0 ? 1 : 0
  key          = "oauth_token_id"
  value        = var.oauth_token_id
  category     = "terraform"
  sensitive    = true
  workspace_id = var.workspace_id
}

resource "tfe_variable" "zone" {
  count        = length(var.zone) > 0 ? 1 : 0
  key          = "zone"
  value        = var.zone
  category     = "terraform"
  sensitive    = false
  workspace_id = var.workspace_id
}

resource "tfe_variable" "billing_account_id" {
  count        = length(var.billing_account_id) > 0 ? 1 : 0
  key          = "billing_account_id"
  value        = var.billing_account_id
  category     = "terraform"
  sensitive    = true
  workspace_id = var.workspace_id
}
