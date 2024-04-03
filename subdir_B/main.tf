terraform {
  required_providers {
    tfcoremock = {
      source  = "hashicorp/tfcoremock"
      version = ">= 0.1.2"
    }
  }
}

variable "subdir_B_value" {
  type = number
}

resource "tfcoremock_dynamic_resource" "my_resource" {
  my_subdir_B_value = var.subdir_B_value
}