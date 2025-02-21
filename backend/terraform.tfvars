// Object-storage vars
bucket_name = "tfstate-m"
max_size-bucket = 524288000
anonymous_access = {
  read        = false
  list        = false
  config_read = false
}


// KMS vars
kms-key_name = "key-0"
algorithm    = "AES_256"