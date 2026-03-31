variable "pve_vm_import" {
  description = "PVE VM IMPORT"
  type = map(string)
  default = {
    rocky9 = "images:import/Rocky-9-GenericCloud-Base.latest.x86_64.qcow2"
    rocky10 = "images:import/Rocky-9-GenericCloud-Base.latest.x86_64.qcow2"
    alma9 = "images:import/AlmaLinux-9-GenericCloud-latest.x86_64.qcow2"
    alma10 = "images:import/AlmaLinux-10-GenericCloud-latest.x86_64.qcow2"
  }
}
