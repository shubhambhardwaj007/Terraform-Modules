variable "project" {
  description = "The GCP project to use for integration tests"
  type        = string
}

variable "zone" {
  description = "The GCP zone to create and test resources in"
  type        = string
}

variable "name" {
  description = "The name of the unmanaged instance group"
  type        = string
}

variable "description" {
  description = "An optional textual description of the instance group."
  type        = string
}

variable "instances" {
  description = "List of instances in the unmanaged instance group"
  type        = list
}

variable "named_ports" {
  description = "Named name and named port"
  type = list(object({
    name = string
    port = number
  }))
  default = []
}
