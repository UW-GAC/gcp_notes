cluster_name = "tm1"
project      = "eighth-road-244120"
zone         = "us-west1-a"

network_name            = "default"
subnetwork_name         = "default"
shared_vpc_host_project = "topmed-dcc-xpn-host"

disable_controller_public_ips = false
disable_login_public_ips      = false
# disable_compute_public_ips    = true

# ompi_version  = null # e.g. v3.1.x
# slurm_version = "19.05-latest"
# suspend_time  = 300

controller_machine_type = "n1-highmem-4"
controller_disk_type    = "pd-ssd"
controller_disk_size_gb = 200
# controller_labels = {
#   key1 = "val1"
#   key2 = "val2"
# }
controller_service_account = "default"
controller_scopes          = ["https://www.googleapis.com/auth/cloud-platform"]
# controller_service_account = "default"
# controller_scopes          = ["https://www.googleapis.com/auth/cloud-platform"]
# cloudsql = {
#   server_ip = "<cloudsql ip>"
#   user      = "slurm"
#   password  = "verysecure"
#   db_name   = "slurm_accounting"
# }
# controller_secondary_disk      = false
# controller_secondary_disk_size = 100
# controller_secondary_disk_type = "pd-ssd"

login_machine_type = "n1-highmem-4"
login_disk_type    = "pd-ssd"
login_disk_size_gb = 50
# login_labels = {
#   key1 = "val1"
#   key2 = "val2"
# }
# login_node_count = 1
login_node_service_account = "default"
login_node_scopes          = ["https://www.googleapis.com/auth/cloud-platform"]
# login_node_service_account = "default"
# login_node_scopes          = [
#   "https://www.googleapis.com/auth/monitoring.write",
#   "https://www.googleapis.com/auth/logging.write"
# ]

# Optional network storage fields
# network_storage is mounted on all instances
# login_network_storage is mounted on controller and login instances
network_storage = [
{ server_ip     = "10.138.0.2"
  remote_mount  = "/nfs1-data/topmed_home"
  local_mount   = "/home"
  fs_type       = "nfs"
  mount_options = "rw,hard,intr"
},
{ server_ip     = "10.138.0.2"
  remote_mount  = "/nfs1-data/topmed_admin"
  local_mount   = "/topmed_admin"
  fs_type       = "nfs"
  mount_options = "rw,hard,intr"
},
{ server_ip     = "10.138.0.2"
  remote_mount  = "/nfs1-data/projects"
  local_mount   = "/projects"
  fs_type       = "nfs"
  mount_options = "rw,hard,intr"
},
{ server_ip     = "none"
  remote_mount  = "uw-analysispipeline-projects"
  local_mount   = "/fuse"
  fs_type       = "gcsfuse"
  mount_options = "ro,_netdev,allow_other,implicit_dirs,uid=2049,gid=2049,file_mode=770,dir_mode=770"
},
]

#
# login_network_storage = [{
#   server_ip     = "<storage host>"
#   remote_mount  = "/net_storage"
#   local_mount   = "/shared"
#   fs_type       = "nfs"
#   mount_options = null
# }]

compute_image_machine_type = "n1-standard-2"
compute_image_disk_type    = "pd-ssd"
compute_image_disk_size_gb = 20
# compute_image_labels = {
#   key1 = "val1"
#   key2 = "val2"
# }

compute_node_service_account = "default"
compute_node_scopes          = ["https://www.googleapis.com/auth/cloud-platform"]
# compute_node_service_account = "default"
# compute_node_scopes          = [
#   "https://www.googleapis.com/auth/monitoring.write",
#   "https://www.googleapis.com/auth/logging.write"
# ]

partitions = [
  { name                 = "tm1-2-13"
    machine_type         = "n1-highmem-2"
    static_node_count    = 0
    max_node_count       = 5000
    zone                 = "us-west1-a"
    compute_disk_type    = "pd-ssd"
    compute_disk_size_gb = 200
    compute_labels       = {
      partition_name = "tm1-2-13"
      boot_disk = "tm1-compute-0-image"
    }
    cpu_platform         = null
    gpu_count            = 0
    gpu_type             = null
    network_storage      = []
    preemptible_bursting = false
    vpc_subnet           = "default"
  },
  { name                 = "tm1-4-26"
    machine_type         = "n1-highmem-4"
    static_node_count    = 0
    max_node_count       = 5000
    zone                 = "us-west1-a"
    compute_disk_type    = "pd-ssd"
    compute_disk_size_gb = 200
    compute_labels       = {
      partition_name = "tm1-4-26"
      boot_disk = "tm1-compute-1-image"
    }
    cpu_platform         = null
    gpu_count            = 0
    gpu_type             = null
    network_storage      = []
    preemptible_bursting = false
    vpc_subnet           = "default"
  },
  { name                 = "tm1-8-30"
    machine_type         = "n1-standard-8"
    static_node_count    = 0
    max_node_count       = 5000
    zone                 = "us-west1-a"
    compute_disk_type    = "pd-ssd"
    compute_disk_size_gb = 200
    compute_labels       = {
      partition_name = "tm1-8-30"
      boot_disk = "tm1-compute-2-image"
    }
    cpu_platform         = null
    gpu_count            = 0
    gpu_type             = null
    network_storage      = []
    preemptible_bursting = false
    vpc_subnet           = "default"
  },
  { name                 = "tm1-8-52"
    machine_type         = "n1-highmem-8"
    static_node_count    = 0
    max_node_count       = 5000
    zone                 = "us-west1-a"
    compute_disk_type    = "pd-ssd"
    compute_disk_size_gb = 200
    compute_labels       = {
      partition_name = "tm1-8-52"
      boot_disk = "tm1-compute-3-image"
    }
    cpu_platform         = null
    gpu_count            = 0
    gpu_type             = null
    network_storage      = []
    preemptible_bursting = false
    vpc_subnet           = "default"
  },
  { name                 = "tm1-16-60"
    machine_type         = "n1-standard-16"
    static_node_count    = 0
    max_node_count       = 5000
    zone                 = "us-west1-a"
    compute_disk_type    = "pd-ssd"
    compute_disk_size_gb = 200
    compute_labels       = {
      partition_name = "tm1-16-60"
      boot_disk = "tm1-compute-4-image"
    }
    cpu_platform         = null
    gpu_count            = 0
    gpu_type             = null
    network_storage      = []
    preemptible_bursting = false
    vpc_subnet           = "default"
  },
  { name                 = "tm1-16-104"
    machine_type         = "n1-highmem-16"
    static_node_count    = 0
    max_node_count       = 5000
    zone                 = "us-west1-a"
    compute_disk_type    = "pd-ssd"
    compute_disk_size_gb = 200
    compute_labels       = {
      partition_name = "tm1-16-104"
      boot_disk = "tm1-compute-5-image"
    }
    cpu_platform         = null
    gpu_count            = 0
    gpu_type             = null
    network_storage      = []
    preemptible_bursting = false
    vpc_subnet           = "default"
  },
  { name                 = "tm1-32-208"
    machine_type         = "n1-highmem-32"
    static_node_count    = 0
    max_node_count       = 5000
    zone                 = "us-west1-a"
    compute_disk_type    = "pd-ssd"
    compute_disk_size_gb = 200
    compute_labels       = {
      partition_name = "tm1-32-208"
      boot_disk = "tm1-compute-6-image"
    }
    cpu_platform         = null
    gpu_count            = 0
    gpu_type             = null
    network_storage      = []
    preemptible_bursting = false
    vpc_subnet           = "default"
  },
#  { name                 = "partition2"
#    machine_type         = "n1-standard-16"
#    static_node_count    = 0
#    max_node_count       = 20
#    zone                 = "us-west1-b"
#    compute_disk_type    = "pd-ssd"
#    compute_disk_size_gb = 10
#    compute_labels       = {
#      key1 = "val1"
#      key2 = "val2"
#    }
#    cpu_platform         = "Intel Skylake"
#    gpu_count            = 8
#    gpu_type             = "nvidia-tesla-v100"
#    network_storage      = [{
#      server_ip     = "none"
#      remote_mount  = "<gcs bucket name>"
#      local_mount   = "/data"
#      fs_type       = "gcsfuse"
#      mount_options = "file_mode=664,dir_mode=775,allow_other"
#    }]
#    preemptible_bursting = true
#    vpc_subnet           = null
]

