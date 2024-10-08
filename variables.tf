variable "azure_credentials" {}

variable "subscription_id" {
  type        = string
  description = "The Id of the azuer subscription"
}

variable "tenant_id" {
  type        = string
  description = "The tenant if of the project"
}
variable "client_id" {
  type        = string
  description = "The id of the application "
}
variable "client_secret" {
  type        = string
  description = "The secret id of the application"
}