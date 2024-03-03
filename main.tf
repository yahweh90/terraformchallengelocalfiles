resource "local_file" "server_names_file" {
filename = "${path.module}/server-names.txt"
  content  = join("\n", var.server_names)
}

resource "local_file" "deployment_regions_file" {
filename = "${path.module}/deployment-regions.txt"
  content  = join("\n", var.deployment_regions)
}

resource "local_file" "app_config_files" {
  for_each = var.app_settings
  filename = "${path.module}/${each.key}-config.txt"
  content  = "${each.key}: ${each.value}"
}

resource "local_file" "server_details_file" {
  filename = "${path.module}/server_details.txt"
  content  = <<-EOT
  name: ${var.server_details.name}
  ip  : ${var.server_details.ip}
  EOT
}

resource "local_file" "node_specs_file" {
  filename = "${path.module}/node-specifications.txt"
  content  = <<-EOT
  Node Name: ${var.node_specifications[0]}
  CPU Cores: ${var.node_specifications[1]}
  Master Node: ${var.node_specifications[2] ? "Yes" : "No"}
  EOT
}
