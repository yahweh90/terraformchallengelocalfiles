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

variable "app_settings" {
  description = "Configuration settings for the application."
  type        = map(string)
  default     = {
	"environment" = "production"
	"debug_mode"  = "false"
  }
}

variable "server_details" {
  description = "Configuration settings for a server."
  type = object({
	name      	    = string
	ip    	        = string
  })
  default = {
	name      	    = "webserver"
	ip    	        = "192.168.1.10"
  }
 }

variable "node_specifications" {
  description = "Configuration for a cluster node."
  type    	= tuple([string, number, bool])
  default 	= ["node01", 4, true]
}
