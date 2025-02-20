# backend "s3" {
# bucket = "bucket_name"
# key = "path/terraform.tfstate"
# region = "us-east-1"
# access_key = "..." #Только для примера. Секретные данные нельзя хардкодить
# secret_key = "..." #Только для примера. Секретные данные нельзя хардкодить
# dynamodb_table = "tfstate-lock" #Таблица блокировок
# encrypt = true #Шифрование state сервером Terraform
# }

terraform {
  backend "s3" {
    endpoint = "storage.yandexcloud.net"
    bucket = "tfstate-develop"
    region = "ru-central1"
    key = "terraform.tfstate"

    skip_region_validation = true
    skip_credentials_validation = true
    dynamodb_endpoint = "https://docapi.serverless.yandexcloud.net/ru-central1/xxx/yyy"
    dynamodb_table = "tfstate-lock-develop"
  }
}