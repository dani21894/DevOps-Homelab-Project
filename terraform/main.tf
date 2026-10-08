resource "proxmox_virtual_environment_vm" "app01" {
  name      = "app01"
  node_name = "pve"
  vm_id     = 111

  clone {
    vm_id        = 9000
    datastore_id = "local-lvm"
    full         = true
  }

  cpu {
    cores = 2
    type  = "host"
  }

  memory {
    dedicated = 2048
  }

  network_device {
    bridge = "vmbr0"
    model  = "virtio"
  }

  initialization {
    datastore_id = "local-lvm"

    ip_config {
      ipv4 {
        address = "192.168.100.248/24"
        gateway = "192.168.100.1"
      }
    }

    user_account {
      username = "devops"

      keys = [
        trimspace(file("/home/devops/.ssh/ansible_ed25519.pub"))
      ]
    }
  }

  agent {
    enabled = true
  }

  operating_system {
    type = "l26"
  }
}


resource "proxmox_virtual_environment_vm" "app02" {
  name      = "app02"
  node_name = "pve"
  vm_id     = 112

  clone {
    vm_id        = 9000
    datastore_id = "local-lvm"
    full         = true
  }

  cpu {
    cores = 2
    type  = "host"
  }

  memory {
    dedicated = 2048
  }

  network_device {
    bridge = "vmbr0"
    model  = "virtio"
  }

  initialization {
    datastore_id = "local-lvm"

    ip_config {
      ipv4 {
        address = "192.168.100.247/24"
        gateway = "192.168.100.1"
      }
    }

    user_account {
      username = "devops"

      keys = [
        trimspace(file("/home/devops/.ssh/ansible_ed25519.pub"))
      ]
    }
  }

  agent {
    enabled = true
  }

  operating_system {
    type = "l26"
  }
}


resource "proxmox_virtual_environment_vm" "monitor01" {
  name      = "monitor01"
  node_name = "pve"
  vm_id     = 113

  clone {
    vm_id        = 9000
    datastore_id = "local-lvm"
    full         = true
  }

  cpu {
    cores = 2
    type  = "host"
  }

  memory {
    dedicated = 3072
  }

  network_device {
    bridge = "vmbr0"
    model  = "virtio"
  }

  initialization {
    datastore_id = "local-lvm"

    ip_config {
      ipv4 {
        address = "192.168.100.246/24"
        gateway = "192.168.100.1"
      }
    }

    user_account {
      username = "devops"

      keys = [
        trimspace(file("/home/devops/.ssh/ansible_ed25519.pub"))
      ]
    }
  }

  agent {
    enabled = true
  }

  operating_system {
    type = "l26"
  }
}


resource "proxmox_virtual_environment_vm" "proxy01" {
  name      = "proxy01"
  node_name = "pve"
  vm_id     = 114

  clone {
    vm_id        = 9000
    datastore_id = "local-lvm"
    full         = true
  }

  cpu {
    cores = 1
    type  = "host"
  }

  memory {
    dedicated = 1024
  }

  network_device {
    bridge = "vmbr0"
    model  = "virtio"
  }

  initialization {
    datastore_id = "local-lvm"

    ip_config {
      ipv4 {
        address = "192.168.100.249/24"
        gateway = "192.168.100.1"
      }
    }

    user_account {
      username = "devops"

      keys = [
        trimspace(file("/home/devops/.ssh/ansible_ed25519.pub"))
      ]
    }
  }

  agent {
    enabled = true
  }

  operating_system {
    type = "l26"
  }
}