variable "name" {
  type        = "string"
  description = "Github username"
}

variable "admin" {
  type        = "boolean"
  description = "Is that user an admin?"
  default     = false
}
