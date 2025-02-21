### Cloud vars
variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "service_account_id" {
  type        = string
  description = "https://yandex.cloud/ru/docs/resource-manager/security/#resources"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "zone" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
//=============================================================================
// Network vars
variable "vpc_name" {
  type        = string  
  description = "VPC network & subnet name"
}

variable "subnet-a_name" {
  type        = string
  default     = "subnet-a" 
  description = "VPC network & subnet name"
}

variable "subnet-b_name" {
  type        = string
  default     = "subnet-b" 
  description = "VPC network & subnet name"
}

variable "subnet-a_cidr" {
  type        = list(string)
  default     = ["192.168.10.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "subnet-b_cidr" {
  type        = list(string)
  default     = ["192.168.20.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}
//===============================================================================
# variable "environment" {
#   type        = string
#   default     = "dev"  
#   description = "Environment for virtual machine names"
# }

# variable username {
#   type = string
# }

# variable ssh_public_key {
#   type        = string
#   description = "Location of SSH public key."
# }

# variable "nat-image_family" {
#   type        = string
#   default     = "nat-instance-ubuntu-2204"
#   description = "OS image for virtual machine"
# }

# variable "image_ubuntu" {
#   type        = string
#   default     = "ubuntu-2204-lts"
#   description = "OS image for virtual machine"
# }

# variable "role_0" {
#   type        = string
#   default     = "nat"  
#   description = "Environment for virtual machine names"
# }

# variable "role_1" {
#   type        = string
#   default     = "vm-1"  
#   description = "Environment for virtual machine names"
# }

# variable "role_2" {
#   type        = string
#   default     = "vm-2"  
#   description = "Environment for virtual machine names"
# }
# variable "vm-nat_platform_id" {
#   type        = string
#   default     = "standard-v1"
#   description = "Yandex Compute Cloud provides platform "
# }

# #single map variable for virtual machine resources
# variable "vms_resources" {
#   type        = map(map(number))
#   description = "All resources for virtual machine"
# }

# variable "vm_scheduling_policy" {
#   type        = bool 
#   default     = true
#   description = "Indicates whether the instance is preemptible. The values are true and false."
# }

# variable "vm-nat_network_interface_nat" {
#   type        = bool 
#   default     = true
#   description = "Provide a public address, for nat-instance"
# }

# variable "vm_network_interface_nat" {
#   type        = bool 
#   default     = false
#   description = "Provide a public address, for instance"
# }

# variable "vm-nat_ip_address" {
#   type        = string   
#   description = "Public ip address, for nat-instance"
# }


# variable storage_object {
#   type          = map(string)
#   description = "The name of the object once it is in the bucket and path to a file that will be read and uploaded as raw bytes for the object content." 
# }

# // Compute Instance Group vars (IG)
# variable ig_name {
#   type        = string
#   description = "The name of the instance group"
# }

# variable "vm-ig_platform" {
#   type        = string
#   default     = "standard-v1"
#   description = "Yandex Compute Cloud provides platform "
# }

# variable "vms-ig_resources" {
#   type        = map(number)
#   description = "Resources for virtual machines IG"
# }

# variable "ig-image_family" {
#   type        = string
#   default     = "ubuntu-2204-lts"
#   description = "OS image for virtual machine"
# }

# variable "scale_policy" {
#   type        = number
#   description = "The scaling policy of the instance group."
# }

# variable "allocation_policy" {
#   type        = list(string)
#   default = [ "ru-central1-a" ]
#   description = "The allocation policy of the instance group by zone and region." 
# } 

# variable "deploy_policy" {
#   type = map(number)
#   description = "The deployment policy of the instance group."
# }
