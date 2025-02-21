// Create a new IAM Service Account (SA).
//
resource "yandex_iam_service_account" "sa" {
  name        = "saadmin"
  folder_id = var.folder_id
  description = "service account to manage VMs"
}

// Назначение ролей сервисному аккаунту
resource "yandex_resourcemanager_folder_iam_member" "sa" {
  folder_id = var.folder_id
  role      = "storage.admin"
  member    = "serviceAccount:${yandex_iam_service_account.sa.id}"
}
resource "yandex_resourcemanager_folder_iam_member" "sa1" {
  folder_id = var.folder_id
  role      = "kms.admin"
  member    = "serviceAccount:${yandex_iam_service_account.sa.id}"
}
resource "yandex_resourcemanager_folder_iam_member" "sa2" {
  folder_id = var.folder_id
  role      = "compute.admin"
  member    = "serviceAccount:${yandex_iam_service_account.sa.id}"
}
resource "yandex_resourcemanager_folder_iam_member" "sa3" {
  folder_id = var.folder_id
  role      = "vpc.admin" 
  member    = "serviceAccount:${yandex_iam_service_account.sa.id}"
}  

// Создание статического ключа доступа
resource "yandex_iam_service_account_static_access_key" "sa-static-key" {
  service_account_id = yandex_iam_service_account.sa.id
  description        = "static access key for object storage"
}

