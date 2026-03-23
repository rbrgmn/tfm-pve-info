terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.98.1"
    }
    random = {
      source = "hashicorp/random"
    }
    external = { 
      source = "hashicorp/external"
      version = "2.3.5"
    }
  } 
}
