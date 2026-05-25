provider "local" {
}

resource "local_file" "infra_definition" {
  content  = "Infrastructure deployed via Terraform deployer tool."
  filename = "${path.module}/../../infrastructure/terraform-status.txt"
}
