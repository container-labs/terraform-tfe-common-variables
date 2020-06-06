# This code is a prototype and not engineered for production use.
# Error handling is incomplete or inappropriate for usage beyond
# a development sample.

variable "environment" {
  description = "Environment"
  default     = ""
}

variable "google_project" {
  description = "GCP Project ID; Optional"
  default     = ""
}

variable "google_region" {
  description = "GCP Region; Optional"
  default     = ""
}

variable "location" {
  description = "For resources supporting the `location` attribute (becoming more common) the value of this variable can be used."
  default     = ""
}

variable "parent_workspace_name" {
  description = "The workspace_id of the environment. This is useful for gathering remote state further down the state chain."
  default     = ""
}

variable "ssh_key_id" {
  description = "The ssh_key_id used by Terraform Enterprise in the triggering of plan/apply operations against a workspace"
  default     = ""
}

variable "stack" {
  description = "Stack name"
  default     = ""
}

variable "tfe_organization_name" {
  description = "Name of the terraform enterprise organization - used for pulling remote state."
  default     = "container-labs"
}

variable "tfe_token" {
  description = "The Terraform Enterprise token to authenticate the provider."
  default     = ""
}

variable "oauth_token_id" {
  description = "VCS token needed to create workspaces that "
  default     = ""
}

variable "workspace_id" {
  description = "The target Terraform Enterprise workspace_id for these variables"
}

variable "zone" {
  description = "The zone in which we place zonal resources."
  default     = ""
}

variable "billing_account_id" {
  default = "013CE5-22E3A5-E29944"
}

