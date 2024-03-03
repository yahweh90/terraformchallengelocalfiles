resource "local_file" "server_names_file" {
filename = "${path.module}/server-names.txt"
  content  = join("\n", var.server_names)
}