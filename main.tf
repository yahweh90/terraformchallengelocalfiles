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
