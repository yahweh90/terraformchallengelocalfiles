variable "server_names" {
  description = " configuration for server"
  type        = list(string)
  default     = ["server1", "server2", "server3"]
}

variable "deployment_regions" {
  description = " configuration for deployment regions"
  type        = set(string)
  default     = ["us-east-1", "eu-west-1", "ap-south-1"]
}
