resource "local_file" "hosts_templatefile" {
  content = templatefile("${path.module}/inventory.tftpl",

  { kube_control_plane = yandex_compute_instance.master
   kube_node = yandex_compute_instance.worker      
   } )

  filename = "${abspath(path.module)}/kubespray/inventory/mycluster/inventory.ini"
}

