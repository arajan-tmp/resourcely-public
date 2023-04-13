variable "create" {
  description = "Whether to create this resource or not?"
  type        = bool
  default     = true
}

variable "bucket" {
  description = "The name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified."
  type        = string
  default     = ""
}

variable "key" {
  description = "The name of the object once it is in the bucket."
  type        = string
  default     = ""
}

variable "defaults" {
  description = "Map of default values which will be used for each item."
  type        = any
  default     = null
}

variable "items" {
  description = "Maps of items to create a wrapper from. Values are passed through to the module."
  type        = any
  default     = false
}
