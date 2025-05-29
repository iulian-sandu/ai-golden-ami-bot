variable "access_key" {
  type        = string
  description = "AWS Access Key"
  ephemeral   = true
}

variable "secret_key" {
  type        = string
  description = "AWS Secret Key"
  ephemeral   = true
}