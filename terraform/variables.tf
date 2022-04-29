variable "account_id" {
  type        = string
  description = "AWS account ID"
  default     =  null
}

variable "region" {
  type        = string
  description = "AWS region"
  default     = null
}

variable "external_id" {
  type        = string
  description = "assume role external id"
  default     = null
}
