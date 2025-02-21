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

// Object-storage vars
variable bucket_name {
  type        = string
  description = "Name bucket for object storage"
}

variable max_size-bucket {
  type        = number
  description = "The size of bucket, in bytes."
}

variable default_storage_class {
  type        = string
  default     = "STANDARD"
  description = "Storage class which is used for storing objects by default. Available values are: STANDARD, COLD, ICE. Default is STANDARD."
}

variable anonymous_access {
  type          = map(bool) 
  description = "Provides various access to objects." 
}

// KMS vars 
variable "kms-key_name" {
  type        = string  
  description = "Name of the key." 
} 

variable "algorithm" {
  type        = string  
  description = "Encryption algorithm to be used with a new key version, generated with the next rotation. The default value is AES_128." 
} 

variable "rotation_period" {
  type        = string
  default     = "1440h" // equal to 1 year
  description = "Interval between automatic rotations. To disable automatic rotation, omit this parameter."
}