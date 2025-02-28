data "yandex_compute_image" "ubuntu" {  
  family = var.image_ubuntu
}

//Передача cloud-config в ВМ 
data "template_file" "cloudinit" {
  template = file("./cloud-init.yml")
  vars = {
    username       = var.username
    ssh_public_key = file(var.ssh_public_key)   
  }
}

resource "yandex_compute_instance" "master" {
#   depends_on = [resource.yandex_compute_instance.db]    
  name = local.name_vm1
  hostname = local.name_vm1  
  platform_id = var.vm_platform_id  
  
  resources {    
    cores         = var.vms_resources["master"]["cores"]
    memory        = var.vms_resources["master"]["memory"]
    core_fraction = var.vms_resources["master"]["core_fraction"]
  }  
  
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  
  scheduling_policy {    
    preemptible = var.vm_scheduling_policy
  }
  
  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-a.id
    nat       = var.nat_network_interface
    # security_group_ids = [yandex_vpc_security_group.example.id]   
  }

  metadata = {
    user-data          = data.template_file.cloudinit.rendered 
    serial-port-enable = 1
  }  
}

resource "yandex_compute_instance" "worker" {
#   depends_on = [resource.yandex_compute_instance.db]  
  count       = var.vm_count
  name        = "${local.name_vm2}-${count.index+1}"  
  hostname    = "${local.name_vm2}-${count.index+1}"
  platform_id = var.vm_platform_id  
  
  resources {    
    cores         = var.vms_resources["worker"]["cores"]
    memory        = var.vms_resources["worker"]["memory"]
    core_fraction = var.vms_resources["worker"]["core_fraction"]
  }  
  
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      type     = var.disk_type
    }
  }
  
  scheduling_policy {    
    preemptible = var.vm_scheduling_policy
  }
  
  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-a.id    
    nat       = var.nat_network_interface
    # security_group_ids = [yandex_vpc_security_group.example.id]   
  }

  metadata = {
    user-data          = data.template_file.cloudinit.rendered 
    serial-port-enable = 1
  }  
}