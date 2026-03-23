variable "pve_vm_template" {
  description = "PVE VM TEMPLATES"
  type = map(string)
  default = {
    rocky9 = "Rocky-9-GenericCloud-Base.latest.x86_64.qcow2"
    rocky10 = "Rocky-10-GenericCloud-Base.latest.x86_64.qcow2"
    alma9 = "AlmaLinux-9-GenericCloud-latest.x86_64.qcow2"
    alma10 = "AlmaLinux-9-GenericCloud-latest.x86_64.qcow2"
  }
}
