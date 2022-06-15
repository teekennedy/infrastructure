terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "2.9.10"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "3.7.0"
    }
  }
}
