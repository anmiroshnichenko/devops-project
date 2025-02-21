// Create KMS Symmetric Key.
//
resource "yandex_kms_symmetric_key" "key-0" {
  name                = var.kms-key_name  
  default_algorithm   = var.algorithm
  rotation_period     = var.rotation_period
#   deletion_protection = true
#   lifecycle {
#     prevent_destroy = true
#   }
}

