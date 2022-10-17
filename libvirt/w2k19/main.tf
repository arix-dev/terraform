terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
    }
  }
}

provider "libvirt" {
  # Configuration options
  uri = "qemu:///system"
}

// blank 40GB image for net install.
resource "libvirt_volume" "w2k19-qcow2" {
  name   = "w2k19-qcow2"
  pool   = "default"
  format = "qcow2"
  size   = 40000000000
}

resource "libvirt_domain" "w2k19" {
  name = "w2k19"
  memory = "4096"
  vcpu   = 1

  network_interface {
    //bridge = "br0"
    //mac    = "52:54:00:b2:2f:86"
  }

  boot_device {
    dev = ["hd","cdrom","network"]
  }

  disk {
    volume_id = libvirt_volume.w2k19-qcow2.id
  }

  disk {
    file = "/home/andrew/Downloads/Windows2019_EVAL.iso"
  }

  graphics {
    type        = "vnc"
    listen_type = "address"
  }
}
