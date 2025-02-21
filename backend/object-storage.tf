// Создание бакета с использованием ключа
resource "yandex_storage_bucket" "backend" {
  access_key            = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key            = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket                = var.bucket_name
  max_size              = var.max_size-bucket
  default_storage_class = var.default_storage_class
  anonymous_access_flags {
    read        = var.anonymous_access.read
    list        = var.anonymous_access.list
    config_read = var.anonymous_access.config_read
  } 

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = yandex_kms_symmetric_key.key-0.id
        sse_algorithm     = "aws:kms"
      }
    }
  } 
}

# resource "yandex_storage_object" "test-object" {
#   access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
#   secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
#   bucket     = yandex_storage_bucket.test.bucket  
#   key         = "elt.jpg"
#   source      = "/home/miroshnichenko_an/clopro/elt.jpg"  
#   content_type = "image/jpg"       
# }


# // Создание бакета для сайта
# resource "yandex_storage_bucket" "al" {
#   access_key            = yandex_iam_service_account_static_access_key.sa-static-key.access_key
#   secret_key            = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
#   bucket                = "al.zem.digital"
#   max_size              = var.max_size-bucket
#   default_storage_class = var.default_storage_class
#   anonymous_access_flags {
#     read        = var.anonymous_access.read
#     list        = var.anonymous_access.list
#     config_read = var.anonymous_access.config_read
#   } 
# }


# resource "yandex_storage_object" "al" {
#   access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
#   secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
#   bucket     = yandex_storage_bucket.al.bucket  
#   key         = "index.html"
#   source      = "/home/miroshnichenko_an/clopro/index.html"  
#   content_type = "text/html"       
# }
