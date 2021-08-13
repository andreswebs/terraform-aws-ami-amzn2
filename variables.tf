variable "storage_type" {
  type        = string
  default     = "gp2"
  description = "AMI storage type"
  validation {
    condition     = can(regex("^gp2|ebs|s3", var.storage_type))
    error_message = "Must be one of `gp2` or `ebs` or `s3`."
  }
}

variable "virt_type" {
  type        = string
  default     = "hvm"
  description = "Virtualization type"
  validation {
    condition     = can(regex("^hvm|pv$", var.virt_type))
    error_message = "Must be one of `hvm`, `pv`."
  }
}

variable "minimal" {
  type        = bool
  default     = false
  description = "Use minimal?"
}

variable "arch" {
  type        = string
  default     = "x86_64"
  description = "Processor architecture"
  validation {
    condition     = can(regex("^x86_64|arm64$", var.arch))
    error_message = "Must be one of `x86_64` or `arm64`."
  }
}
