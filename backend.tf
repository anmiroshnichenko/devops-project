terraform {
  backend "s3" {
    endpoint = "https://storage.yandexcloud.net"
    bucket = "tfstate-m"
    region = "ru-central1"
    key = "terraform.tfstate"

    skip_region_validation = true
    skip_credentials_validation = true
    skip_requesting_account_id = true
    skip_s3_checksum = true
    access_key            = yandex_iam_service_account_static_access_key.sa-static-key.access_key
    secret_key            = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
    # encrypt = true
    # dynamodb_endpoint = "https://docapi.serverless.yandexcloud.net/ru-central1/xxx/yyy"
    # dynamodb_table = "tfstate-lock-develop"
  }
}