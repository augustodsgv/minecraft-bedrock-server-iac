# Magalu cloud
variable "mgc_api_key" {
  type        = string
  description = "mgc api key"
}

variable "mgc_region" {
  type = string
  description = "Magalu Cloud Region"
}

variable "ssh_key_path" {
  type        = string
  default     = "/home/augustodsgv/.ssh/mgc.pub"
  description = "path of public key in this computers"
}

variable "machine_image" {
  type        = string
  default     = "cloud-ubuntu-22.04 LTS"
  description = "virtual machine image"
}

variable "machine_type" {
  type        = string
  default     = "BV2-4-20"
  description = "VM flavor"
}
