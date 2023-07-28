variable "name" {
  description = "Whether to create this resource or not?"
  type        = string
}

variable "bucket" {
  description = "The name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified."
  type        = string
}

variable "key" {
  description = "The name of the object once it is in the bucket."
  type        = string
  default     = ""
  advanced    = true
}

variable "defaults" {
  description = "Map of default values which will be used for each item."
  type        = any
}

variable "items" {
  description = "Maps of items to create a wrapper from. Values are passed through to the module."
  type        = any
  default     = false
}
