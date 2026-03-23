data "proxmox_virtual_environment_nodes" "all" {}

data "proxmox_virtual_environment_node" "node" {
  for_each = toset(data.proxmox_virtual_environment_nodes.all.names)
  node_name = each.key
}

locals {
  nodes_usage = {
    for node, n in data.proxmox_virtual_environment_node.node:
      node => {
        cpu_cores = n.cpu_cores
        cpu_count = n.cpu_count
        cpu_model = n.cpu_model
        memory_total_bytes = n.memory_total
        memory_total_gb = format("%.2f GiB", n.memory_total / 1024 / 1024 / 1024)
      }
  }
}
