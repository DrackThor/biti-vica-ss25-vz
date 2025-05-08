variable "key" {
  type = string
  description = "Exoscale API key"
  sensitive = false
}
variable "secret" {
  type = string
  description = "Exoscale API secret"
  sensitive = true
}