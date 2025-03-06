vpc_name = "dev_vpc"

vm_count = 2
ssh_public_key   = "/home/miroshnichenko_an/.ssh/id_rsa.pub"
username         = "miroshnichenko_an"
disk_type = "network-ssd"
vm_scheduling_policy = false
vms_resources = {
     master ={
       cores = 2
       memory = 4
       disk = 15
       core_fraction = 5        
    },
     worker = {
       cores = 4
       memory = 4
       disk = 20
       core_fraction = 5        
    }
}

# vm-nat_ip_address = "192.168.10.254"

# storage_object = {
#   key         = "elt.jpg"
#   source      = "/home/miroshnichenko_an/clopro/elt.jpg"
# }

# // Compute Instance Group vars (IG)
# ig_name = "frontend"
# ig-image_family = "lamp"
# scale_policy = 3
# vms-ig_resources = {
#   cores = 2
#   memory = 2
#   core_fraction = 5        
#   disk = 8  
# }
# deploy_policy = {
#   "max_unavailable" = 1
#   "max_creating"    = 1
#   "max_expansion"   = 1
#   "max_deleting"    = 2
# }

